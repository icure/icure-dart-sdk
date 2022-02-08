//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormLayoutData {
  /// Returns a new [FormLayoutData] instance.
  FormLayoutData({
    this.subForm,
    this.irrelevant,
    this.determinesSscontactName,
    this.type,
    this.name,
    this.sortOrder,
    this.options = const {},
    this.descr,
    this.label,
    this.editor,
    this.defaultValue = const [],
    this.defaultStatus,
    this.suggest = const [],
    this.plannings = const [],
    this.tags = const [],
    this.codes = const [],
    this.codeTypes = const [],
    this.formulas = const [],
  });

  bool subForm;

  bool irrelevant;

  bool determinesSscontactName;

  String type;

  String name;

  double sortOrder;

  Map<String, FormDataOption> options;

  String descr;

  String label;

  Editor editor;

  List<ContentDto> defaultValue;

  int defaultStatus;

  List<Suggest> suggest;

  List<FormPlanning> plannings;

  List<GuiCode> tags;

  List<GuiCode> codes;

  List<GuiCodeType> codeTypes;

  List<Formula> formulas;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormLayoutData &&
     other.subForm == subForm &&
     other.irrelevant == irrelevant &&
     other.determinesSscontactName == determinesSscontactName &&
     other.type == type &&
     other.name == name &&
     other.sortOrder == sortOrder &&
     other.options == options &&
     other.descr == descr &&
     other.label == label &&
     other.editor == editor &&
     other.defaultValue == defaultValue &&
     other.defaultStatus == defaultStatus &&
     other.suggest == suggest &&
     other.plannings == plannings &&
     other.tags == tags &&
     other.codes == codes &&
     other.codeTypes == codeTypes &&
     other.formulas == formulas;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (subForm == null ? 0 : subForm.hashCode) +
    (irrelevant == null ? 0 : irrelevant.hashCode) +
    (determinesSscontactName == null ? 0 : determinesSscontactName.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (sortOrder == null ? 0 : sortOrder.hashCode) +
    (options == null ? 0 : options.hashCode) +
    (descr == null ? 0 : descr.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (editor == null ? 0 : editor.hashCode) +
    (defaultValue == null ? 0 : defaultValue.hashCode) +
    (defaultStatus == null ? 0 : defaultStatus.hashCode) +
    (suggest == null ? 0 : suggest.hashCode) +
    (plannings == null ? 0 : plannings.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (codeTypes == null ? 0 : codeTypes.hashCode) +
    (formulas == null ? 0 : formulas.hashCode);

  @override
  String toString() => 'FormLayoutData[subForm=$subForm, irrelevant=$irrelevant, determinesSscontactName=$determinesSscontactName, type=$type, name=$name, sortOrder=$sortOrder, options=$options, descr=$descr, label=$label, editor=$editor, defaultValue=$defaultValue, defaultStatus=$defaultStatus, suggest=$suggest, plannings=$plannings, tags=$tags, codes=$codes, codeTypes=$codeTypes, formulas=$formulas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (subForm != null) {
      json[r'subForm'] = subForm;
    }
    if (irrelevant != null) {
      json[r'irrelevant'] = irrelevant;
    }
    if (determinesSscontactName != null) {
      json[r'determinesSscontactName'] = determinesSscontactName;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (sortOrder != null) {
      json[r'sortOrder'] = sortOrder;
    }
    if (options != null) {
      json[r'options'] = options;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (editor != null) {
      json[r'editor'] = editor;
    }
    if (defaultValue != null) {
      json[r'defaultValue'] = defaultValue;
    }
    if (defaultStatus != null) {
      json[r'defaultStatus'] = defaultStatus;
    }
    if (suggest != null) {
      json[r'suggest'] = suggest;
    }
    if (plannings != null) {
      json[r'plannings'] = plannings;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (codes != null) {
      json[r'codes'] = codes;
    }
    if (codeTypes != null) {
      json[r'codeTypes'] = codeTypes;
    }
    if (formulas != null) {
      json[r'formulas'] = formulas;
    }
    return json;
  }

  /// Returns a new [FormLayoutData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormLayoutData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FormLayoutData(
        subForm: mapValueOfType<bool>(json, r'subForm'),
        irrelevant: mapValueOfType<bool>(json, r'irrelevant'),
        determinesSscontactName: mapValueOfType<bool>(json, r'determinesSscontactName'),
        type: mapValueOfType<String>(json, r'type'),
        name: mapValueOfType<String>(json, r'name'),
        sortOrder: mapValueOfType<double>(json, r'sortOrder'),
        options: mapValueOfType<Map<String, FormDataOption>>(json, r'options'),
        descr: mapValueOfType<String>(json, r'descr'),
        label: mapValueOfType<String>(json, r'label'),
        editor: Editor.fromJson(json[r'editor']),
        defaultValue: ContentDto.listFromJson(json[r'defaultValue']),
        defaultStatus: mapValueOfType<int>(json, r'defaultStatus'),
        suggest: Suggest.listFromJson(json[r'suggest']),
        plannings: FormPlanning.listFromJson(json[r'plannings']),
        tags: GuiCode.listFromJson(json[r'tags']),
        codes: GuiCode.listFromJson(json[r'codes']),
        codeTypes: GuiCodeType.listFromJson(json[r'codeTypes']),
        formulas: Formula.listFromJson(json[r'formulas']),
      );
    }
    return null;
  }

  static List<FormLayoutData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormLayoutData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormLayoutData>[];

  static Map<String, FormLayoutData> mapFromJson(dynamic json) {
    final map = <String, FormLayoutData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormLayoutData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormLayoutData-objects as value to a dart map
  static Map<String, List<FormLayoutData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormLayoutData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormLayoutData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

