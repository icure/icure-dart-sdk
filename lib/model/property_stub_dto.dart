//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PropertyStubDto {
  /// Returns a new [PropertyStubDto] instance.
  PropertyStubDto({
    this.id,
    this.type,
    this.typedValue,
    this.deletionDate,
    this.encryptedSelf,
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
  PropertyTypeStubDto? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TypedValueDtoObject? typedValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropertyStubDto &&
          other.id == id &&
          other.type == type &&
          other.typedValue == typedValue &&
          other.deletionDate == deletionDate &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (typedValue == null ? 0 : typedValue!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() => 'PropertyStubDto[id=$id, type=$type, typedValue=$typedValue, deletionDate=$deletionDate, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (typedValue != null) {
      json[r'typedValue'] = typedValue;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [PropertyStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PropertyStubDto? fromJson(dynamic value) {
    if (value is PropertyStubDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PropertyStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PropertyStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PropertyStubDto(
        id: mapValueOfType<String>(json, r'id'),
        type: PropertyTypeStubDto.fromJson(json[r'type']),
        typedValue: TypedValueDtoObject.fromJson(json[r'typedValue']),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<PropertyStubDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PropertyStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PropertyStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PropertyStubDto> mapFromJson(dynamic json) {
    final map = <String, PropertyStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PropertyStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PropertyStubDto-objects as value to a dart map
  static Map<String, List<PropertyStubDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PropertyStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PropertyStubDto.listFromJson(
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
