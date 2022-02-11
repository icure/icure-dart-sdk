//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class CodeStubDto {
  /// Returns a new [CodeStubDto] instance.
  CodeStubDto({
    this.id,
    this.context,
    this.type,
    this.code,
    this.version,
    this.label = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? context;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  Map<String, String> label;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CodeStubDto &&
          other.id == id &&
          other.context == context &&
          other.type == type &&
          other.code == code &&
          other.version == version &&
          other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (context == null ? 0 : context!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (code == null ? 0 : code!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (label.hashCode);

  @override
  String toString() => 'CodeStubDto[id=$id, context=$context, type=$type, code=$code, version=$version, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (context != null) {
      json[r'context'] = context;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    json[r'label'] = label;
    return json;
  }

  /// Returns a new [CodeStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeStubDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeStubDto(
        id: mapValueOfType<String>(json, r'id'),
        context: mapValueOfType<String>(json, r'context'),
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
        version: mapValueOfType<String>(json, r'version'),
        label: mapCastOfType<String, String>(json, r'label') ?? const {},
      );
    }
    return null;
  }

  static List<CodeStubDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CodeStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeStubDto> mapFromJson(dynamic json) {
    final map = <String, CodeStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeStubDto-objects as value to a dart map
  static Map<String, List<CodeStubDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CodeStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeStubDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
