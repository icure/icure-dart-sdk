import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/retry.dart';
import 'package:icure_dart_sdk/api.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class IdWithRev {

  String id;
  String rev;

  IdWithRev(
      this.id,
      this.rev,
      );

  static IdWithRev fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return IdWithRev(
      mapValueOfType<String>(json, r'_id')!,
      mapValueOfType<String>(json, r'_rev')!,
    );
  }
}

abstract class TestBackend {

  abstract final String iCureUser;
  abstract final String iCurePwd;
  abstract final String iCureURL;
  abstract final String couchdbUser;
  abstract final String couchdbPassword;

  Future<void> init();
  Future<void> shutdown({List<String>? ids = null, String? dbPrefix = null});

}

class RemoteTestBackend implements TestBackend {

  static TestBackend? _instance;
  String couchDBURL;
  @override final String iCurePwd;
  @override final String iCureURL;
  @override final String iCureUser;
  @override final String couchdbUser;
  @override final String couchdbPassword;


  RemoteTestBackend(this.iCureUser, this.iCurePwd, this.iCureURL, this.couchdbUser, this.couchdbPassword, this.couchDBURL);

  static TestBackend getInstance(String iCureUser, String iCurePwd, String couchDbUser, String couchDbPassword, [String iCureURL = "https://kraken.icure.dev", String couchDBURL = "https://couch.svcacc.icure.cloud"]) {
    if (RemoteTestBackend._instance == null) {
      RemoteTestBackend._instance = RemoteTestBackend(iCureUser, iCurePwd, iCureURL, couchDbUser, couchDbPassword, couchDBURL);
    }
    return RemoteTestBackend._instance!;
  }

  @override
  Future<void> init() async { }

  Future<void> shutdown({List<String>? ids = null, String? dbPrefix = null}) async {
    final headers = {
      "Content-type": "application/json",
      "Authorization": "Basic ${base64.encode(utf8.encode("${this.couchdbUser}:${this.couchdbPassword}"))}"
    };
    await Future.forEach(ids!, (String id) async {
      final response = await http.get(Uri.parse("${this.couchDBURL}/${dbPrefix}-base/${Uri.encodeComponent(id)}"), headers: headers);
      if (response.statusCode < 400) {
        final decodedBody = await _decodeBodyBytes(response);
        final element = IdWithRev.fromJson(jsonDecode(decodedBody));
        await http.delete(Uri.parse("${this.couchDBURL}/${dbPrefix}-base/${Uri.encodeComponent(element.id)}?rev=${Uri.encodeComponent(element.rev)}"), headers: headers);
      }
    });

  }

  Future<String> _decodeBodyBytes(Response response) async {
    final contentType = response.headers['content-type'];
    return contentType != null && contentType.toLowerCase().startsWith('application/json')
        ? response.bodyBytes.isEmpty ? '' : utf8.decode(response.bodyBytes)
        : response.body;
  }


}

class DockerTestBackend implements TestBackend {

  static TestBackend? _instance;
  final int DB_PORT;
  final int AS_PORT;
  final Uuid uuid = Uuid();
  @override final String couchdbUser;
  @override final String couchdbPassword;
  @override final String iCurePwd;
  @override final String iCureURL;
  @override final String iCureUser;

  DockerTestBackend(this.DB_PORT, this.AS_PORT, this.couchdbUser, this.couchdbPassword, this.iCureUser, this.iCurePwd, this.iCureURL);

  static TestBackend getInstance(int DB_PORT, int AS_PORT, String couchdbUser, String couchdbPassword, String iCureUser, String iCurePwd, [String? iCureURL = null]) {
    if (DockerTestBackend._instance == null) {
      if (iCureURL == null) iCureURL = "http://127.0.0.1:${AS_PORT.toString()}";
      DockerTestBackend._instance = DockerTestBackend(DB_PORT, AS_PORT, couchdbUser, couchdbPassword, iCureUser, iCurePwd, iCureURL);
    }
    return DockerTestBackend._instance!;
  }

  @override
  Future<void> init() async {
    final result = await Process.run("docker", ["network", "create", "network-test"]);
    stdout.write("OUT :"+result.stdout);
    stderr.write("ERR :"+result.stderr);

    bool isDBLaunched;
    try {
      await http.get(Uri.parse("http://127.0.0.1:${this.DB_PORT.toString()}")).timeout(const Duration(seconds: 30));
      isDBLaunched = true;
    } catch(e) {
      isDBLaunched = false;
    }

    if(!isDBLaunched) {
      final couchdb = await Process.run("docker", [
        "run",
        "--network",
        "network-test",
        "-p",
        "${this.DB_PORT}:5984",
        "-e",
        "COUCHDB_USER=${this.couchdbUser}",
        "-e",
        "COUCHDB_PASSWORD=${this.couchdbPassword}",
        "-d",
        "--name",
        "couchdb-test-ts",
        "couchdb:3.2.2"
      ]);
      stdout.write("OUT :"+couchdb.stdout);
      stderr.write("ERR :"+couchdb.stderr);

      final client = RetryClient(http.Client(), retries: 10, when: (response) => response.statusCode > 200, whenError: (response, stacktrace) => true);
      try {
        client.get(Uri.parse("http://127.0.0.1:${this.DB_PORT.toString()}"));
      } finally {
        client.close();
      }
    } else {
      try {
        final headers = {
          "Content-type": "application/json",
          "Authorization": "Basic ${base64.encode(utf8.encode("${this.couchdbUser}:${this.couchdbPassword}"))}"
        };
        final textDBResponse = (await http.get(Uri.parse("http://127.0.0.1:${this.DB_PORT.toString()}/icure-base/_all_docs"),
            headers: headers)).body;
        final jsonDBResponse = json.decode(textDBResponse);
        final body = jsonDBResponse["rows"]
            .where((r) => r["id"].startsWith("user-") == true)
            .map((it) => {"_id": it.id, "_rev":it.value.rev, "deleted": true});
        await http.post(Uri.parse("http://127.0.0.1:${this.DB_PORT.toString()}/icure-base/_all_docs"),
            headers: headers,
            body: body);
      } catch(e) {}
    }

    bool isAPILaunched;
    try {
      await http.get(Uri.parse("http://127.0.0.1:${this.AS_PORT.toString()}/rest/v1/icure/v")).timeout(const Duration(seconds: 30));
      isAPILaunched = true;
    } catch(e) {
      isAPILaunched = false;
    }

    if (!isAPILaunched) {
      final icureOss = await Process.run("docker", [
        "run",
        "--network",
        "network-test",
        "-p",
        "5005:5005",
        "-p",
        "${this.AS_PORT.toString()}:16043",
        "-e",
        "JAVA_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005",
        "-e",
        "ICURE_COUCHDB_URL=http://couchdb-test-ts:5984",
        "-e",
        "ICURE_COUCHDB_USERNAME=${this.couchdbUser}",
        "-e",
        "ICURE_COUCHDB_PASSWORD=${this.couchdbPassword}",
        "-e",
        "ICURE_AUTHENTICATION_LOCAL=true",
        "-d",
        "--name",
        "icure-oss-test",
        "docker.taktik.be/icure-oss:2.4.23-kraken.c1b1db7acc"
      ]);
      stdout.write("OUT :"+icureOss.stdout);
      stderr.write("ERR :"+icureOss.stderr);

      final client = RetryClient(http.Client(), retries: 10, when: (response) => response.statusCode > 200, whenError: (response, stacktrace) => true);
      try {
        client.get(Uri.parse("http://127.0.0.1:${this.AS_PORT.toString()}/rest/v1/icure/v"));
      } finally {
        client.close();
      }
    }

    final client = RetryClient(http.Client(), retries: 10, when: (response) => response.statusCode > 200, whenError: (response, stacktrace) => true);
    final userId = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    try {
      await client.post(Uri.parse("http://127.0.0.1:${this.DB_PORT.toString()}/icure-base"),
          headers: {
            "Content-type": "application/json",
            "Authorization": "Basic ${base64.encode(utf8.encode("${this.couchdbUser}:${this.couchdbPassword}"))}"
          },
          body: json.encode({"_id": userId, "login": this.iCureUser, "status": "ACTIVE", "java_type": "org.taktik.icure.entities.User", "passwordHash": "{R0DLKxxRDxdtpfY542gOUZbvWkfv1KWO9QOi9yvr/2c=}39a484cbf9057072623177422172e8a173bd826d68a2b12fa8e36ff94a44a0d7"})
      );
    } finally {
      client.close();
    }
  }

  @override
  Future<void> shutdown({List<String>? ids = null, String? dbPrefix = null}) async {
    await Process.run("docker", ["rm", "-f", "couchdb-test-ts"]);
    await Process.run("docker", ["rm", "-f", "icure-oss-test"]);
    await Process.run("docker", ["network", "rm", "network-test"]);
  }
}