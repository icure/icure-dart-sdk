//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class VmpGroupStubDto {
  /// Returns a new [VmpGroupStubDto] instance.
  VmpGroupStubDto({
    required this.id,
    this.code,
    this.name,
    this.productId,
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
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is VmpGroupStubDto &&
          other.id == id &&
          other.code == code &&
          other.name == name &&
          other.productId == productId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (id.hashCode) +
      (code == null ? 0 : code!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (productId == null ? 0 : productId!.hashCode);

  @override
  String toString() => 'VmpGroupStubDto[id=$id, code=$code, name=$name, productId=$productId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    return json;
  }

  /// Returns a new [VmpGroupStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpGroupStubDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VmpGroupStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VmpGroupStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VmpGroupStubDto(
        id: mapValueOfType<String>(json, r'id')!,
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        productId: mapValueOfType<String>(json, r'productId'),
      );
    }
    return null;
  }

  static List<VmpGroupStubDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VmpGroupStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VmpGroupStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VmpGroupStubDto> mapFromJson(dynamic json) {
    final map = <String, VmpGroupStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpGroupStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VmpGroupStubDto-objects as value to a dart map
  static Map<String, List<VmpGroupStubDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VmpGroupStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpGroupStubDto.listFromJson(entry.value, growable: growable,);
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

