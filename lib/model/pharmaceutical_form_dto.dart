//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PharmaceuticalFormDto {
  /// Returns a new [PharmaceuticalFormDto] instance.
  PharmaceuticalFormDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.code,
    this.name,
    this.standardForms = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String code;

  SamTextDto name;

  List<CodeStubDto> standardForms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PharmaceuticalFormDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.code == code &&
     other.name == name &&
     other.standardForms == standardForms;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (standardForms == null ? 0 : standardForms.hashCode);

  @override
  String toString() => 'PharmaceuticalFormDto[id=$id, rev=$rev, deletionDate=$deletionDate, code=$code, name=$name, standardForms=$standardForms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'standardForms'] = standardForms;
    return json;
  }

  /// Returns a new [PharmaceuticalFormDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PharmaceuticalFormDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PharmaceuticalFormDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        standardForms: CodeStubDto.listFromJson(json[r'standardForms']),
      );
    }
    return null;
  }

  static List<PharmaceuticalFormDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PharmaceuticalFormDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PharmaceuticalFormDto>[];

  static Map<String, PharmaceuticalFormDto> mapFromJson(dynamic json) {
    final map = <String, PharmaceuticalFormDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PharmaceuticalFormDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PharmaceuticalFormDto-objects as value to a dart map
  static Map<String, List<PharmaceuticalFormDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PharmaceuticalFormDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PharmaceuticalFormDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

