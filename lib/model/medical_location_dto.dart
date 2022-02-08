//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MedicalLocationDto {
  /// Returns a new [MedicalLocationDto] instance.
  MedicalLocationDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.description,
    this.responsible,
    this.guardPost,
    this.cbe,
    this.bic,
    this.bankAccount,
    this.nihii,
    this.ssin,
    this.address,
    this.agendaIds = const {},
    this.options = const {},
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String name;

  String description;

  String responsible;

  bool guardPost;

  String cbe;

  String bic;

  String bankAccount;

  String nihii;

  String ssin;

  AddressDto address;

  Set<String> agendaIds;

  Map<String, String> options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MedicalLocationDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.description == description &&
     other.responsible == responsible &&
     other.guardPost == guardPost &&
     other.cbe == cbe &&
     other.bic == bic &&
     other.bankAccount == bankAccount &&
     other.nihii == nihii &&
     other.ssin == ssin &&
     other.address == address &&
     other.agendaIds == agendaIds &&
     other.options == options;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (guardPost == null ? 0 : guardPost.hashCode) +
    (cbe == null ? 0 : cbe.hashCode) +
    (bic == null ? 0 : bic.hashCode) +
    (bankAccount == null ? 0 : bankAccount.hashCode) +
    (nihii == null ? 0 : nihii.hashCode) +
    (ssin == null ? 0 : ssin.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (agendaIds == null ? 0 : agendaIds.hashCode) +
    (options == null ? 0 : options.hashCode);

  @override
  String toString() => 'MedicalLocationDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, description=$description, responsible=$responsible, guardPost=$guardPost, cbe=$cbe, bic=$bic, bankAccount=$bankAccount, nihii=$nihii, ssin=$ssin, address=$address, agendaIds=$agendaIds, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    if (guardPost != null) {
      json[r'guardPost'] = guardPost;
    }
    if (cbe != null) {
      json[r'cbe'] = cbe;
    }
    if (bic != null) {
      json[r'bic'] = bic;
    }
    if (bankAccount != null) {
      json[r'bankAccount'] = bankAccount;
    }
    if (nihii != null) {
      json[r'nihii'] = nihii;
    }
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
    if (address != null) {
      json[r'address'] = address;
    }
      json[r'agendaIds'] = agendaIds;
      json[r'options'] = options;
    return json;
  }

  /// Returns a new [MedicalLocationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicalLocationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MedicalLocationDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        guardPost: mapValueOfType<bool>(json, r'guardPost'),
        cbe: mapValueOfType<String>(json, r'cbe'),
        bic: mapValueOfType<String>(json, r'bic'),
        bankAccount: mapValueOfType<String>(json, r'bankAccount'),
        nihii: mapValueOfType<String>(json, r'nihii'),
        ssin: mapValueOfType<String>(json, r'ssin'),
        address: AddressDto.fromJson(json[r'address']),
        agendaIds: json[r'agendaIds'] is Set
          ? (json[r'agendaIds'] as Set).cast<String>()
          : null,
        options: mapCastOfType<String, String>(json, r'options'),
      );
    }
    return null;
  }

  static List<MedicalLocationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MedicalLocationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MedicalLocationDto>[];

  static Map<String, MedicalLocationDto> mapFromJson(dynamic json) {
    final map = <String, MedicalLocationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MedicalLocationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MedicalLocationDto-objects as value to a dart map
  static Map<String, List<MedicalLocationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MedicalLocationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MedicalLocationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

