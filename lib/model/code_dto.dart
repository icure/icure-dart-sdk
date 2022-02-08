//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodeDto {
  /// Returns a new [CodeDto] instance.
  CodeDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.context,
    this.type,
    this.code,
    this.version,
    this.label = const {},
    this.author,
    this.regions = const {},
    this.periodicity = const {},
    this.level,
    this.links = const {},
    this.qualifiedLinks = const {},
    this.flags = const {},
    this.searchTerms = const {},
    this.data,
    this.appendices = const {},
    this.disabled = false,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String context;

  String type;

  String code;

  String version;

  Map<String, String> label;

  String author;

  Set<String> regions;

  Set<PeriodicityDto> periodicity;

  int level;

  Set<String> links;

  Map<String, List<String>> qualifiedLinks;

  Set<CodeDtoFlagsEnum> flags;

  Map<String, Set<String>> searchTerms;

  String data;

  Map<String, String> appendices;

  bool disabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.context == context &&
     other.type == type &&
     other.code == code &&
     other.version == version &&
     other.label == label &&
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
     other.disabled == disabled;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (context == null ? 0 : context.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (label == null ? 0 : label.hashCode) +
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
    (disabled == null ? 0 : disabled.hashCode);

  @override
  String toString() => 'CodeDto[id=$id, rev=$rev, deletionDate=$deletionDate, context=$context, type=$type, code=$code, version=$version, label=$label, author=$author, regions=$regions, periodicity=$periodicity, level=$level, links=$links, qualifiedLinks=$qualifiedLinks, flags=$flags, searchTerms=$searchTerms, data=$data, appendices=$appendices, disabled=$disabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
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
    if (label != null) {
      json[r'label'] = label;
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
    return json;
  }

  /// Returns a new [CodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CodeDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        context: mapValueOfType<String>(json, r'context'),
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
        version: mapValueOfType<String>(json, r'version'),
        label: mapCastOfType<String, String>(json, r'label'),
        author: mapValueOfType<String>(json, r'author'),
        regions: json[r'regions'] is Set
          ? (json[r'regions'] as Set).cast<String>()
          : null,
        periodicity: PeriodicityDto.listFromJson(json[r'periodicity']).toSet(),
        level: mapValueOfType<int>(json, r'level'),
        links: json[r'links'] is Set
            ? (json[r'links'] as Set).cast<String>()
            : null,
        qualifiedLinks: json[r'qualifiedLinks'] == null
            ? null
            : mapCastOfType<String, List>(json, r'qualifiedLinks'),
        flags: CodeDtoFlagsEnum.listFromJson(json[r'flags']).toSet(),
        searchTerms: json[r'searchTerms'] == null
            ? null
            : mapCastOfType<String, Set<String>>(json, r'searchTerms'),
        data: mapValueOfType<String>(json, r'data'),
        appendices: mapCastOfType<String, String>(json, r'appendices'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
      );
    }
    return null;
  }

  static List<CodeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CodeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CodeDto>[];

  static Map<String, CodeDto> mapFromJson(dynamic json) {
    final map = <String, CodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CodeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CodeDto-objects as value to a dart map
  static Map<String, List<CodeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CodeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class CodeDtoFlagsEnum {
  /// Instantiate a new enum with the provided [value].
  const CodeDtoFlagsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const maleOnly = CodeDtoFlagsEnum._(r'male_only');
  static const femaleOnly = CodeDtoFlagsEnum._(r'female_only');
  static const deptkinesitherapy = CodeDtoFlagsEnum._(r'deptkinesitherapy');
  static const deptnursing = CodeDtoFlagsEnum._(r'deptnursing');
  static const deptgeneralpractice = CodeDtoFlagsEnum._(r'deptgeneralpractice');
  static const deptsocialworker = CodeDtoFlagsEnum._(r'deptsocialworker');
  static const deptpsychology = CodeDtoFlagsEnum._(r'deptpsychology');
  static const deptadministrative = CodeDtoFlagsEnum._(r'deptadministrative');
  static const deptdietetics = CodeDtoFlagsEnum._(r'deptdietetics');
  static const deptspeechtherapy = CodeDtoFlagsEnum._(r'deptspeechtherapy');
  static const deptdentistry = CodeDtoFlagsEnum._(r'deptdentistry');
  static const deptoccupationaltherapy = CodeDtoFlagsEnum._(r'deptoccupationaltherapy');
  static const depthealthcare = CodeDtoFlagsEnum._(r'depthealthcare');
  static const deptgynecology = CodeDtoFlagsEnum._(r'deptgynecology');
  static const deptpediatry = CodeDtoFlagsEnum._(r'deptpediatry');
  static const deptalgology = CodeDtoFlagsEnum._(r'deptalgology');
  static const deptanatomopathology = CodeDtoFlagsEnum._(r'deptanatomopathology');
  static const deptanesthesiology = CodeDtoFlagsEnum._(r'deptanesthesiology');
  static const deptbacteriology = CodeDtoFlagsEnum._(r'deptbacteriology');
  static const deptcardiacsurgery = CodeDtoFlagsEnum._(r'deptcardiacsurgery');
  static const deptcardiology = CodeDtoFlagsEnum._(r'deptcardiology');
  static const deptchildandadolescentpsychiatry = CodeDtoFlagsEnum._(r'deptchildandadolescentpsychiatry');
  static const deptdermatology = CodeDtoFlagsEnum._(r'deptdermatology');
  static const deptdiabetology = CodeDtoFlagsEnum._(r'deptdiabetology');
  static const deptemergency = CodeDtoFlagsEnum._(r'deptemergency');
  static const deptendocrinology = CodeDtoFlagsEnum._(r'deptendocrinology');
  static const deptgastroenterology = CodeDtoFlagsEnum._(r'deptgastroenterology');
  static const deptgenetics = CodeDtoFlagsEnum._(r'deptgenetics');
  static const deptgeriatry = CodeDtoFlagsEnum._(r'deptgeriatry');
  static const depthandsurgery = CodeDtoFlagsEnum._(r'depthandsurgery');
  static const depthematology = CodeDtoFlagsEnum._(r'depthematology');
  static const deptinfectiousdisease = CodeDtoFlagsEnum._(r'deptinfectiousdisease');
  static const deptintensivecare = CodeDtoFlagsEnum._(r'deptintensivecare');
  static const deptlaboratory = CodeDtoFlagsEnum._(r'deptlaboratory');
  static const deptmajorburns = CodeDtoFlagsEnum._(r'deptmajorburns');
  static const deptmaxillofacialsurgery = CodeDtoFlagsEnum._(r'deptmaxillofacialsurgery');
  static const deptmedicine = CodeDtoFlagsEnum._(r'deptmedicine');
  static const deptmolecularbiology = CodeDtoFlagsEnum._(r'deptmolecularbiology');
  static const deptneonatalogy = CodeDtoFlagsEnum._(r'deptneonatalogy');
  static const deptnephrology = CodeDtoFlagsEnum._(r'deptnephrology');
  static const deptneurology = CodeDtoFlagsEnum._(r'deptneurology');
  static const deptneurosurgery = CodeDtoFlagsEnum._(r'deptneurosurgery');
  static const deptnte = CodeDtoFlagsEnum._(r'deptnte');
  static const deptnuclear = CodeDtoFlagsEnum._(r'deptnuclear');
  static const deptnutritiondietetics = CodeDtoFlagsEnum._(r'deptnutritiondietetics');
  static const deptobstetrics = CodeDtoFlagsEnum._(r'deptobstetrics');
  static const deptoncology = CodeDtoFlagsEnum._(r'deptoncology');
  static const deptophtalmology = CodeDtoFlagsEnum._(r'deptophtalmology');
  static const deptorthopedy = CodeDtoFlagsEnum._(r'deptorthopedy');
  static const deptpalliativecare = CodeDtoFlagsEnum._(r'deptpalliativecare');
  static const deptpediatricintensivecare = CodeDtoFlagsEnum._(r'deptpediatricintensivecare');
  static const deptpediatricsurgery = CodeDtoFlagsEnum._(r'deptpediatricsurgery');
  static const deptpharmacy = CodeDtoFlagsEnum._(r'deptpharmacy');
  static const deptphysicalmedecine = CodeDtoFlagsEnum._(r'deptphysicalmedecine');
  static const deptphysiotherapy = CodeDtoFlagsEnum._(r'deptphysiotherapy');
  static const deptplasticandreparatorysurgery = CodeDtoFlagsEnum._(r'deptplasticandreparatorysurgery');
  static const deptpneumology = CodeDtoFlagsEnum._(r'deptpneumology');
  static const deptpodiatry = CodeDtoFlagsEnum._(r'deptpodiatry');
  static const deptpsychiatry = CodeDtoFlagsEnum._(r'deptpsychiatry');
  static const deptradiology = CodeDtoFlagsEnum._(r'deptradiology');
  static const deptradiotherapy = CodeDtoFlagsEnum._(r'deptradiotherapy');
  static const deptrevalidation = CodeDtoFlagsEnum._(r'deptrevalidation');
  static const deptrheumatology = CodeDtoFlagsEnum._(r'deptrheumatology');
  static const deptrhumatology = CodeDtoFlagsEnum._(r'deptrhumatology');
  static const deptsenology = CodeDtoFlagsEnum._(r'deptsenology');
  static const deptsocialservice = CodeDtoFlagsEnum._(r'deptsocialservice');
  static const deptsportsmedecine = CodeDtoFlagsEnum._(r'deptsportsmedecine');
  static const deptstomatology = CodeDtoFlagsEnum._(r'deptstomatology');
  static const deptsurgery = CodeDtoFlagsEnum._(r'deptsurgery');
  static const deptthoracicsurgery = CodeDtoFlagsEnum._(r'deptthoracicsurgery');
  static const depttoxicology = CodeDtoFlagsEnum._(r'depttoxicology');
  static const depttropicalmedecine = CodeDtoFlagsEnum._(r'depttropicalmedecine');
  static const depturology = CodeDtoFlagsEnum._(r'depturology');
  static const deptvascularsurgery = CodeDtoFlagsEnum._(r'deptvascularsurgery');
  static const deptvisceraldigestiveabdominalsurgery = CodeDtoFlagsEnum._(r'deptvisceraldigestiveabdominalsurgery');
  static const depttransplantsurgery = CodeDtoFlagsEnum._(r'depttransplantsurgery');
  static const deptpercutaneous = CodeDtoFlagsEnum._(r'deptpercutaneous');
  static const deptchildbirth = CodeDtoFlagsEnum._(r'deptchildbirth');

  /// List of all possible values in this [enum][CodeDtoFlagsEnum].
  static const values = <CodeDtoFlagsEnum>[
    maleOnly,
    femaleOnly,
    deptkinesitherapy,
    deptnursing,
    deptgeneralpractice,
    deptsocialworker,
    deptpsychology,
    deptadministrative,
    deptdietetics,
    deptspeechtherapy,
    deptdentistry,
    deptoccupationaltherapy,
    depthealthcare,
    deptgynecology,
    deptpediatry,
    deptalgology,
    deptanatomopathology,
    deptanesthesiology,
    deptbacteriology,
    deptcardiacsurgery,
    deptcardiology,
    deptchildandadolescentpsychiatry,
    deptdermatology,
    deptdiabetology,
    deptemergency,
    deptendocrinology,
    deptgastroenterology,
    deptgenetics,
    deptgeriatry,
    depthandsurgery,
    depthematology,
    deptinfectiousdisease,
    deptintensivecare,
    deptlaboratory,
    deptmajorburns,
    deptmaxillofacialsurgery,
    deptmedicine,
    deptmolecularbiology,
    deptneonatalogy,
    deptnephrology,
    deptneurology,
    deptneurosurgery,
    deptnte,
    deptnuclear,
    deptnutritiondietetics,
    deptobstetrics,
    deptoncology,
    deptophtalmology,
    deptorthopedy,
    deptpalliativecare,
    deptpediatricintensivecare,
    deptpediatricsurgery,
    deptpharmacy,
    deptphysicalmedecine,
    deptphysiotherapy,
    deptplasticandreparatorysurgery,
    deptpneumology,
    deptpodiatry,
    deptpsychiatry,
    deptradiology,
    deptradiotherapy,
    deptrevalidation,
    deptrheumatology,
    deptrhumatology,
    deptsenology,
    deptsocialservice,
    deptsportsmedecine,
    deptstomatology,
    deptsurgery,
    deptthoracicsurgery,
    depttoxicology,
    depttropicalmedecine,
    depturology,
    deptvascularsurgery,
    deptvisceraldigestiveabdominalsurgery,
    depttransplantsurgery,
    deptpercutaneous,
    deptchildbirth,
  ];

  static CodeDtoFlagsEnum fromJson(dynamic value) =>
    CodeDtoFlagsEnumTypeTransformer().decode(value);

  static List<CodeDtoFlagsEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CodeDtoFlagsEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CodeDtoFlagsEnum>[];
}

/// Transformation class that can [encode] an instance of [CodeDtoFlagsEnum] to String,
/// and [decode] dynamic data back to [CodeDtoFlagsEnum].
class CodeDtoFlagsEnumTypeTransformer {
  factory CodeDtoFlagsEnumTypeTransformer() => _instance ??= const CodeDtoFlagsEnumTypeTransformer._();

  const CodeDtoFlagsEnumTypeTransformer._();

  String encode(CodeDtoFlagsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeDtoFlagsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeDtoFlagsEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'male_only': return CodeDtoFlagsEnum.maleOnly;
        case r'female_only': return CodeDtoFlagsEnum.femaleOnly;
        case r'deptkinesitherapy': return CodeDtoFlagsEnum.deptkinesitherapy;
        case r'deptnursing': return CodeDtoFlagsEnum.deptnursing;
        case r'deptgeneralpractice': return CodeDtoFlagsEnum.deptgeneralpractice;
        case r'deptsocialworker': return CodeDtoFlagsEnum.deptsocialworker;
        case r'deptpsychology': return CodeDtoFlagsEnum.deptpsychology;
        case r'deptadministrative': return CodeDtoFlagsEnum.deptadministrative;
        case r'deptdietetics': return CodeDtoFlagsEnum.deptdietetics;
        case r'deptspeechtherapy': return CodeDtoFlagsEnum.deptspeechtherapy;
        case r'deptdentistry': return CodeDtoFlagsEnum.deptdentistry;
        case r'deptoccupationaltherapy': return CodeDtoFlagsEnum.deptoccupationaltherapy;
        case r'depthealthcare': return CodeDtoFlagsEnum.depthealthcare;
        case r'deptgynecology': return CodeDtoFlagsEnum.deptgynecology;
        case r'deptpediatry': return CodeDtoFlagsEnum.deptpediatry;
        case r'deptalgology': return CodeDtoFlagsEnum.deptalgology;
        case r'deptanatomopathology': return CodeDtoFlagsEnum.deptanatomopathology;
        case r'deptanesthesiology': return CodeDtoFlagsEnum.deptanesthesiology;
        case r'deptbacteriology': return CodeDtoFlagsEnum.deptbacteriology;
        case r'deptcardiacsurgery': return CodeDtoFlagsEnum.deptcardiacsurgery;
        case r'deptcardiology': return CodeDtoFlagsEnum.deptcardiology;
        case r'deptchildandadolescentpsychiatry': return CodeDtoFlagsEnum.deptchildandadolescentpsychiatry;
        case r'deptdermatology': return CodeDtoFlagsEnum.deptdermatology;
        case r'deptdiabetology': return CodeDtoFlagsEnum.deptdiabetology;
        case r'deptemergency': return CodeDtoFlagsEnum.deptemergency;
        case r'deptendocrinology': return CodeDtoFlagsEnum.deptendocrinology;
        case r'deptgastroenterology': return CodeDtoFlagsEnum.deptgastroenterology;
        case r'deptgenetics': return CodeDtoFlagsEnum.deptgenetics;
        case r'deptgeriatry': return CodeDtoFlagsEnum.deptgeriatry;
        case r'depthandsurgery': return CodeDtoFlagsEnum.depthandsurgery;
        case r'depthematology': return CodeDtoFlagsEnum.depthematology;
        case r'deptinfectiousdisease': return CodeDtoFlagsEnum.deptinfectiousdisease;
        case r'deptintensivecare': return CodeDtoFlagsEnum.deptintensivecare;
        case r'deptlaboratory': return CodeDtoFlagsEnum.deptlaboratory;
        case r'deptmajorburns': return CodeDtoFlagsEnum.deptmajorburns;
        case r'deptmaxillofacialsurgery': return CodeDtoFlagsEnum.deptmaxillofacialsurgery;
        case r'deptmedicine': return CodeDtoFlagsEnum.deptmedicine;
        case r'deptmolecularbiology': return CodeDtoFlagsEnum.deptmolecularbiology;
        case r'deptneonatalogy': return CodeDtoFlagsEnum.deptneonatalogy;
        case r'deptnephrology': return CodeDtoFlagsEnum.deptnephrology;
        case r'deptneurology': return CodeDtoFlagsEnum.deptneurology;
        case r'deptneurosurgery': return CodeDtoFlagsEnum.deptneurosurgery;
        case r'deptnte': return CodeDtoFlagsEnum.deptnte;
        case r'deptnuclear': return CodeDtoFlagsEnum.deptnuclear;
        case r'deptnutritiondietetics': return CodeDtoFlagsEnum.deptnutritiondietetics;
        case r'deptobstetrics': return CodeDtoFlagsEnum.deptobstetrics;
        case r'deptoncology': return CodeDtoFlagsEnum.deptoncology;
        case r'deptophtalmology': return CodeDtoFlagsEnum.deptophtalmology;
        case r'deptorthopedy': return CodeDtoFlagsEnum.deptorthopedy;
        case r'deptpalliativecare': return CodeDtoFlagsEnum.deptpalliativecare;
        case r'deptpediatricintensivecare': return CodeDtoFlagsEnum.deptpediatricintensivecare;
        case r'deptpediatricsurgery': return CodeDtoFlagsEnum.deptpediatricsurgery;
        case r'deptpharmacy': return CodeDtoFlagsEnum.deptpharmacy;
        case r'deptphysicalmedecine': return CodeDtoFlagsEnum.deptphysicalmedecine;
        case r'deptphysiotherapy': return CodeDtoFlagsEnum.deptphysiotherapy;
        case r'deptplasticandreparatorysurgery': return CodeDtoFlagsEnum.deptplasticandreparatorysurgery;
        case r'deptpneumology': return CodeDtoFlagsEnum.deptpneumology;
        case r'deptpodiatry': return CodeDtoFlagsEnum.deptpodiatry;
        case r'deptpsychiatry': return CodeDtoFlagsEnum.deptpsychiatry;
        case r'deptradiology': return CodeDtoFlagsEnum.deptradiology;
        case r'deptradiotherapy': return CodeDtoFlagsEnum.deptradiotherapy;
        case r'deptrevalidation': return CodeDtoFlagsEnum.deptrevalidation;
        case r'deptrheumatology': return CodeDtoFlagsEnum.deptrheumatology;
        case r'deptrhumatology': return CodeDtoFlagsEnum.deptrhumatology;
        case r'deptsenology': return CodeDtoFlagsEnum.deptsenology;
        case r'deptsocialservice': return CodeDtoFlagsEnum.deptsocialservice;
        case r'deptsportsmedecine': return CodeDtoFlagsEnum.deptsportsmedecine;
        case r'deptstomatology': return CodeDtoFlagsEnum.deptstomatology;
        case r'deptsurgery': return CodeDtoFlagsEnum.deptsurgery;
        case r'deptthoracicsurgery': return CodeDtoFlagsEnum.deptthoracicsurgery;
        case r'depttoxicology': return CodeDtoFlagsEnum.depttoxicology;
        case r'depttropicalmedecine': return CodeDtoFlagsEnum.depttropicalmedecine;
        case r'depturology': return CodeDtoFlagsEnum.depturology;
        case r'deptvascularsurgery': return CodeDtoFlagsEnum.deptvascularsurgery;
        case r'deptvisceraldigestiveabdominalsurgery': return CodeDtoFlagsEnum.deptvisceraldigestiveabdominalsurgery;
        case r'depttransplantsurgery': return CodeDtoFlagsEnum.depttransplantsurgery;
        case r'deptpercutaneous': return CodeDtoFlagsEnum.deptpercutaneous;
        case r'deptchildbirth': return CodeDtoFlagsEnum.deptchildbirth;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeDtoFlagsEnumTypeTransformer] instance.
  static CodeDtoFlagsEnumTypeTransformer _instance;
}


