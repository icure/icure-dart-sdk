//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? subForm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? irrelevant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? determinesSscontactName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sortOrder;

  Map<String, FormDataOption> options;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Editor? editor;

  List<ContentDto> defaultValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultStatus;

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
    (subForm == null ? 0 : subForm!.hashCode) +
    (irrelevant == null ? 0 : irrelevant!.hashCode) +
    (determinesSscontactName == null ? 0 : determinesSscontactName!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode) +
    (options.hashCode) +
    (descr == null ? 0 : descr!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (editor == null ? 0 : editor!.hashCode) +
    (defaultValue.hashCode) +
    (defaultStatus == null ? 0 : defaultStatus!.hashCode) +
    (suggest.hashCode) +
    (plannings.hashCode) +
    (tags.hashCode) +
    (codes.hashCode) +
    (codeTypes.hashCode) +
    (formulas.hashCode);

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
      json[r'options'] = options;
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (editor != null) {
      json[r'editor'] = editor;
    }
      json[r'defaultValue'] = defaultValue;
    if (defaultStatus != null) {
      json[r'defaultStatus'] = defaultStatus;
    }
      json[r'suggest'] = suggest;
      json[r'plannings'] = plannings;
      json[r'tags'] = tags;
      json[r'codes'] = codes;
      json[r'codeTypes'] = codeTypes;
      json[r'formulas'] = formulas;
    return json;
  }

  /// Returns a new [FormLayoutData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormLayoutData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormLayoutData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormLayoutData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormLayoutData(
        subForm: mapValueOfType<bool>(json, r'subForm'),
        irrelevant: mapValueOfType<bool>(json, r'irrelevant'),
        determinesSscontactName: mapValueOfType<bool>(json, r'determinesSscontactName'),
        type: mapValueOfType<String>(json, r'type'),
        name: mapValueOfType<String>(json, r'name'),
        sortOrder: mapValueOfType<double>(json, r'sortOrder'),
        options: mapValueOfType<Map<String, FormDataOption>>(json, r'options') ?? const {},
        descr: mapValueOfType<String>(json, r'descr'),
        label: mapValueOfType<String>(json, r'label'),
        editor: Editor.fromJson(json[r'editor']),
        defaultValue: ContentDto.listFromJson(json[r'defaultValue']) ?? const [],
        defaultStatus: mapValueOfType<int>(json, r'defaultStatus'),
        suggest: Suggest.listFromJson(json[r'suggest']) ?? const [],
        plannings: FormPlanning.listFromJson(json[r'plannings']) ?? const [],
        tags: GuiCode.listFromJson(json[r'tags']) ?? const [],
        codes: GuiCode.listFromJson(json[r'codes']) ?? const [],
        codeTypes: GuiCodeType.listFromJson(json[r'codeTypes']) ?? const [],
        formulas: Formula.listFromJson(json[r'formulas']) ?? const [],
      );
    }
    return null;
  }

  static List<FormLayoutData>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormLayoutData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormLayoutData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormLayoutData> mapFromJson(dynamic json) {
    final map = <String, FormLayoutData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormLayoutData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormLayoutData-objects as value to a dart map
  static Map<String, List<FormLayoutData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormLayoutData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormLayoutData.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

