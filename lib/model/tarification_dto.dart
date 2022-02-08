//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TarificationDto {
  /// Returns a new [TarificationDto] instance.
  TarificationDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.label = const {},
    this.context,
    this.type,
    this.code,
    this.version,
    this.author,
    this.regions = const {},
    this.periodicity = const [],
    this.level,
    this.links = const [],
    this.qualifiedLinks = const {},
    this.flags = const {},
    this.searchTerms = const {},
    this.data,
    this.appendices = const {},
    @required this.disabled,
    this.valorisations = const {},
    this.category = const {},
    this.consultationCode,
    this.hasRelatedCode,
    this.needsPrescriber,
    this.relatedCodes = const {},
    this.ngroup,
    this.letterValues = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  Map<String, String> label;

  String context;

  String type;

  String code;

  String version;

  String author;

  Set<String> regions;

  List<PeriodicityDto> periodicity;

  int level;

  List<String> links;

  Map<String, List<String>> qualifiedLinks;

  Set<String> flags;

  Map<String, Set<String>> searchTerms;

  String data;

  Map<String, String> appendices;

  bool disabled;

  Set<ValorisationDto> valorisations;

  Map<String, String> category;

  bool consultationCode;

  bool hasRelatedCode;

  bool needsPrescriber;

  Set<String> relatedCodes;

  String ngroup;

  List<LetterValueDto> letterValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TarificationDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.label == label &&
     other.context == context &&
     other.type == type &&
     other.code == code &&
     other.version == version &&
     other.author == author &&
     other.regions == regions &&
     other.periodicity == periodicity &&
     other.level == level &&
     other.links == links &&
     other.qualifiedLinks == qualifiedLinks &&
     other.flags == flags &&
     other.searchTerms == searchTerms &&
     other.data == data &&
     other.appendices == appendices &&
     other.disabled == disabled &&
     other.valorisations == valorisations &&
     other.category == category &&
     other.consultationCode == consultationCode &&
     other.hasRelatedCode == hasRelatedCode &&
     other.needsPrescriber == needsPrescriber &&
     other.relatedCodes == relatedCodes &&
     other.ngroup == ngroup &&
     other.letterValues == letterValues;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (context == null ? 0 : context.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (regions == null ? 0 : regions.hashCode) +
    (periodicity == null ? 0 : periodicity.hashCode) +
    (level == null ? 0 : level.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (qualifiedLinks == null ? 0 : qualifiedLinks.hashCode) +
    (flags == null ? 0 : flags.hashCode) +
    (searchTerms == null ? 0 : searchTerms.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (appendices == null ? 0 : appendices.hashCode) +
    (disabled == null ? 0 : disabled.hashCode) +
    (valorisations == null ? 0 : valorisations.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (consultationCode == null ? 0 : consultationCode.hashCode) +
    (hasRelatedCode == null ? 0 : hasRelatedCode.hashCode) +
    (needsPrescriber == null ? 0 : needsPrescriber.hashCode) +
    (relatedCodes == null ? 0 : relatedCodes.hashCode) +
    (ngroup == null ? 0 : ngroup.hashCode) +
    (letterValues == null ? 0 : letterValues.hashCode);

  @override
  String toString() => 'TarificationDto[id=$id, rev=$rev, deletionDate=$deletionDate, label=$label, context=$context, type=$type, code=$code, version=$version, author=$author, regions=$regions, periodicity=$periodicity, level=$level, links=$links, qualifiedLinks=$qualifiedLinks, flags=$flags, searchTerms=$searchTerms, data=$data, appendices=$appendices, disabled=$disabled, valorisations=$valorisations, category=$category, consultationCode=$consultationCode, hasRelatedCode=$hasRelatedCode, needsPrescriber=$needsPrescriber, relatedCodes=$relatedCodes, ngroup=$ngroup, letterValues=$letterValues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (label != null) {
      json[r'label'] = label;
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
    if (author != null) {
      json[r'author'] = author;
    }
      json[r'regions'] = regions;
      json[r'periodicity'] = periodicity;
    if (level != null) {
      json[r'level'] = level;
    }
      json[r'links'] = links;
      json[r'qualifiedLinks'] = qualifiedLinks;
      json[r'flags'] = flags;
      json[r'searchTerms'] = searchTerms;
    if (data != null) {
      json[r'data'] = data;
    }
      json[r'appendices'] = appendices;
      json[r'disabled'] = disabled;
      json[r'valorisations'] = valorisations;
      json[r'category'] = category;
    if (consultationCode != null) {
      json[r'consultationCode'] = consultationCode;
    }
    if (hasRelatedCode != null) {
      json[r'hasRelatedCode'] = hasRelatedCode;
    }
    if (needsPrescriber != null) {
      json[r'needsPrescriber'] = needsPrescriber;
    }
      json[r'relatedCodes'] = relatedCodes;
    if (ngroup != null) {
      json[r'ngroup'] = ngroup;
    }
      json[r'letterValues'] = letterValues;
    return json;
  }

  /// Returns a new [TarificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TarificationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TarificationDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        label: mapCastOfType<String, String>(json, r'label'),
        context: mapValueOfType<String>(json, r'context'),
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
        version: mapValueOfType<String>(json, r'version'),
        author: mapValueOfType<String>(json, r'author'),
        regions: json[r'regions'] is Set
          ? (json[r'regions'] as Set).cast<String>()
          : null,
        periodicity: PeriodicityDto.listFromJson(json[r'periodicity']),
        level: mapValueOfType<int>(json, r'level'),
        links: json[r'links'] is List
          ? (json[r'links'] as List).cast<String>()
          : null,
        qualifiedLinks: json[r'qualifiedLinks'] == null
          ? null
          : mapCastOfType<String, List>(json, r'qualifiedLinks'),
        //TODO flags: CodeDtoFlagsEnum.listFromJson(json[r'flags']).toList(),
        searchTerms: json[r'searchTerms'] == null
          ? null
          : null, //TODO mapCastOfType<String, List>(json, r'searchTerms'),
        data: mapValueOfType<String>(json, r'data'),
        appendices: mapCastOfType<String, String>(json, r'appendices'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        valorisations: ValorisationDto.listFromJson(json[r'valorisations']).toSet(),
        category: mapCastOfType<String, String>(json, r'category'),
        consultationCode: mapValueOfType<bool>(json, r'consultationCode'),
        hasRelatedCode: mapValueOfType<bool>(json, r'hasRelatedCode'),
        needsPrescriber: mapValueOfType<bool>(json, r'needsPrescriber'),
        relatedCodes: json[r'relatedCodes'] is Set
          ? (json[r'relatedCodes'] as Set).cast<String>()
          : null,
        ngroup: mapValueOfType<String>(json, r'ngroup'),
        letterValues: LetterValueDto.listFromJson(json[r'letterValues']),
      );
    }
    return null;
  }

  static List<TarificationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TarificationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TarificationDto>[];

  static Map<String, TarificationDto> mapFromJson(dynamic json) {
    final map = <String, TarificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TarificationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TarificationDto-objects as value to a dart map
  static Map<String, List<TarificationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TarificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TarificationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

