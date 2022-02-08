//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubstanceStubDto {
  /// Returns a new [SubstanceStubDto] instance.
  SubstanceStubDto({
    this.id,
    this.code,
    this.chemicalForm,
    this.name,
    this.note,
    this.standardSubstances = const [],
  });

  String id;

  String code;

  String chemicalForm;

  SamTextDto name;

  SamTextDto note;

  List<StandardSubstanceDto> standardSubstances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubstanceStubDto &&
     other.id == id &&
     other.code == code &&
     other.chemicalForm == chemicalForm &&
     other.name == name &&
     other.note == note &&
     other.standardSubstances == standardSubstances;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (chemicalForm == null ? 0 : chemicalForm.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (note == null ? 0 : note.hashCode) +
    (standardSubstances == null ? 0 : standardSubstances.hashCode);

  @override
  String toString() => 'SubstanceStubDto[id=$id, code=$code, chemicalForm=$chemicalForm, name=$name, note=$note, standardSubstances=$standardSubstances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (chemicalForm != null) {
      json[r'chemicalForm'] = chemicalForm;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (standardSubstances != null) {
      json[r'standardSubstances'] = standardSubstances;
    }
    return json;
  }

  /// Returns a new [SubstanceStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubstanceStubDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SubstanceStubDto(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code'),
        chemicalForm: mapValueOfType<String>(json, r'chemicalForm'),
        name: SamTextDto.fromJson(json[r'name']),
        note: SamTextDto.fromJson(json[r'note']),
        standardSubstances: StandardSubstanceDto.listFromJson(json[r'standardSubstances']),
      );
    }
    return null;
  }

  static List<SubstanceStubDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SubstanceStubDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SubstanceStubDto>[];

  static Map<String, SubstanceStubDto> mapFromJson(dynamic json) {
    final map = <String, SubstanceStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SubstanceStubDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SubstanceStubDto-objects as value to a dart map
  static Map<String, List<SubstanceStubDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SubstanceStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SubstanceStubDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

