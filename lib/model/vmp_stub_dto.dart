//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class VmpStubDto {
  /// Returns a new [VmpStubDto] instance.
  VmpStubDto({
    required this.id,
    this.code,
    this.vmpGroup,
    this.name,
  });

  String id;

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
  VmpGroupStubDto? vmpGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpStubDto &&
     other.id == id &&
     other.code == code &&
     other.vmpGroup == vmpGroup &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (vmpGroup == null ? 0 : vmpGroup!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'VmpStubDto[id=$id, code=$code, vmpGroup=$vmpGroup, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (code != null) {
      json[r'code'] = code;
    }
    if (vmpGroup != null) {
      json[r'vmpGroup'] = vmpGroup;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [VmpStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpStubDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VmpStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VmpStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VmpStubDto(
        id: mapValueOfType<String>(json, r'id')!,
        code: mapValueOfType<String>(json, r'code'),
        vmpGroup: VmpGroupStubDto.fromJson(json[r'vmpGroup']),
        name: SamTextDto.fromJson(json[r'name']),
      );
    }
    return null;
  }

  static List<VmpStubDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VmpStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VmpStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VmpStubDto> mapFromJson(dynamic json) {
    final map = <String, VmpStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VmpStubDto-objects as value to a dart map
  static Map<String, List<VmpStubDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VmpStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpStubDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

