//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubstanceDto {
  /// Returns a new [SubstanceDto] instance.
  SubstanceDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.code,
    this.chemicalForm,
    this.name,
    this.note,
    this.standardSubstances = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String code;

  String chemicalForm;

  SamTextDto name;

  SamTextDto note;

  List<StandardSubstanceDto> standardSubstances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubstanceDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.code == code &&
     other.chemicalForm == chemicalForm &&
     other.name == name &&
     other.note == note &&
     other.standardSubstances == standardSubstances;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (chemicalForm == null ? 0 : chemicalForm.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (note == null ? 0 : note.hashCode) +
    (standardSubstances == null ? 0 : standardSubstances.hashCode);

  @override
  String toString() => 'SubstanceDto[id=$id, rev=$rev, deletionDate=$deletionDate, code=$code, chemicalForm=$chemicalForm, name=$name, note=$note, standardSubstances=$standardSubstances]';

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

  /// Returns a new [SubstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubstanceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SubstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        code: mapValueOfType<String>(json, r'code'),
        chemicalForm: mapValueOfType<String>(json, r'chemicalForm'),
        name: SamTextDto.fromJson(json[r'name']),
        note: SamTextDto.fromJson(json[r'note']),
        standardSubstances: StandardSubstanceDto.listFromJson(json[r'standardSubstances']),
      );
    }
    return null;
  }

  static List<SubstanceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SubstanceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SubstanceDto>[];

  static Map<String, SubstanceDto> mapFromJson(dynamic json) {
    final map = <String, SubstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SubstanceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SubstanceDto-objects as value to a dart map
  static Map<String, List<SubstanceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SubstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SubstanceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

