//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PropertyStubDto {
  /// Returns a new [PropertyStubDto] instance.
  PropertyStubDto({
    this.id,
    this.type,
    this.typedValue,
    this.deletionDate,
    this.encryptedSelf,
  });

  String id;

  PropertyTypeStubDto type;

  TypedValueDtoObject typedValue;

  int deletionDate;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PropertyStubDto &&
     other.id == id &&
     other.type == type &&
     other.typedValue == typedValue &&
     other.deletionDate == deletionDate &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (typedValue == null ? 0 : typedValue.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

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
  static PropertyStubDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<PropertyStubDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PropertyStubDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PropertyStubDto>[];

  static Map<String, PropertyStubDto> mapFromJson(dynamic json) {
    final map = <String, PropertyStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PropertyStubDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PropertyStubDto-objects as value to a dart map
  static Map<String, List<PropertyStubDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PropertyStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PropertyStubDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

