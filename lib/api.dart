//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'package:expire_cache/expire_cache.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:pointycastle/asn1.dart';
import "package:pointycastle/export.dart";
import 'package:pointycastle/src/platform_check/platform_check.dart';
import 'package:tuple/tuple.dart';
import 'util/collection_utils.dart';
import 'util/binary_utils.dart';
import 'util/functional_utils.dart';

part 'api/access_log_api.dart';

part 'api/contact_api.dart';

part 'api/healthcare_party_api.dart';

part 'api_client.dart';

part 'api_exception.dart';

part 'api_helper.dart';

part 'auth/api_key_auth.dart';

part 'auth/authentication.dart';

part 'auth/http_basic_auth.dart';

part 'auth/http_bearer_auth.dart';

part 'auth/oauth.dart';

part 'crypto/crypto.dart';

part 'extended_api/contact_api.dart';
part 'model/access_log_dto.dart';

part 'model/code_stub_dto.dart';

part 'model/contact_dto.dart';

part 'model/decrypted/access_log_dto.dart';

part 'model/decrypted/contact_dto.dart';

part 'model/decrypted/patient_dto.dart';

part 'model/delegation_dto.dart';

part 'model/healthcare_party_dto.dart';
part 'model/patient_dto.dart';

part 'model/user_dto.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
