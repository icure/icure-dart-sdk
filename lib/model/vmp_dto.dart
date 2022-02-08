//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VmpDto {
  /// Returns a new [VmpDto] instance.
  VmpDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.from,
    this.to,
    this.code,
    this.vmpGroup,
    this.name,
    this.abbreviation,
    this.vtm,
    this.wadas = const [],
    this.components = const [],
    this.commentedClassifications = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  int from;

  int to;

  String code;

  VmpGroupStubDto vmpGroup;

  SamTextDto name;

  SamTextDto abbreviation;

  VtmDto vtm;

  List<WadaDto> wadas;

  List<VmpComponentDto> components;

  List<CommentedClassificationDto> commentedClassifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.from == from &&
     other.to == to &&
     other.code == code &&
     other.vmpGroup == vmpGroup &&
     other.name == name &&
     other.abbreviation == abbreviation &&
     other.vtm == vtm &&
     other.wadas == wadas &&
     other.components == components &&
     other.commentedClassifications == commentedClassifications;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (vmpGroup == null ? 0 : vmpGroup.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (abbreviation == null ? 0 : abbreviation.hashCode) +
    (vtm == null ? 0 : vtm.hashCode) +
    (wadas == null ? 0 : wadas.hashCode) +
    (components == null ? 0 : components.hashCode) +
    (commentedClassifications == null ? 0 : commentedClassifications.hashCode);

  @override
  String toString() => 'VmpDto[id=$id, rev=$rev, deletionDate=$deletionDate, from=$from, to=$to, code=$code, vmpGroup=$vmpGroup, name=$name, abbreviation=$abbreviation, vtm=$vtm, wadas=$wadas, components=$components, commentedClassifications=$commentedClassifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (vmpGroup != null) {
      json[r'vmpGroup'] = vmpGroup;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (abbreviation != null) {
      json[r'abbreviation'] = abbreviation;
    }
    if (vtm != null) {
      json[r'vtm'] = vtm;
    }
    if (wadas != null) {
      json[r'wadas'] = wadas;
    }
    if (components != null) {
      json[r'components'] = components;
    }
    if (commentedClassifications != null) {
      json[r'commentedClassifications'] = commentedClassifications;
    }
    return json;
  }

  /// Returns a new [VmpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VmpDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        code: mapValueOfType<String>(json, r'code'),
        vmpGroup: VmpGroupStubDto.fromJson(json[r'vmpGroup']),
        name: SamTextDto.fromJson(json[r'name']),
        abbreviation: SamTextDto.fromJson(json[r'abbreviation']),
        vtm: VtmDto.fromJson(json[r'vtm']),
        wadas: WadaDto.listFromJson(json[r'wadas']),
        components: VmpComponentDto.listFromJson(json[r'components']),
        commentedClassifications: CommentedClassificationDto.listFromJson(json[r'commentedClassifications']),
      );
    }
    return null;
  }

  static List<VmpDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VmpDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VmpDto>[];

  static Map<String, VmpDto> mapFromJson(dynamic json) {
    final map = <String, VmpDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VmpDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VmpDto-objects as value to a dart map
  static Map<String, List<VmpDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VmpDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VmpDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

