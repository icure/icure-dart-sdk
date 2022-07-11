//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FormTemplateDto {
  /// Returns a new [FormTemplateDto] instance.
  FormTemplateDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.layout,
    this.templateLayout,
    this.name,
    this.guid,
    this.group,
    this.descr,
    this.disabled,
    this.specialty,
    this.author,
    this.formInstancePreferredLocation,
    this.keyboardShortcut,
    this.shortReport,
    this.mediumReport,
    this.longReport,
    this.reports = const {},
    this.tags = const {},
    this.layoutAttachmentId,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormLayout? layout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormTemplateLayout? templateLayout;

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
  String? guid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DocumentGroupDto? group;

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
  String? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? specialty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formInstancePreferredLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyboardShortcut;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortReport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mediumReport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? longReport;

  Set<String> reports;

  Set<CodeStubDto> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? layoutAttachmentId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormTemplateDto &&
          other.id == id &&
          other.rev == rev &&
          other.deletionDate == deletionDate &&
          other.layout == layout &&
          other.templateLayout == templateLayout &&
          other.name == name &&
          other.guid == guid &&
          other.group == group &&
          other.descr == descr &&
          other.disabled == disabled &&
          other.specialty == specialty &&
          other.author == author &&
          other.formInstancePreferredLocation == formInstancePreferredLocation &&
          other.keyboardShortcut == keyboardShortcut &&
          other.shortReport == shortReport &&
          other.mediumReport == mediumReport &&
          other.longReport == longReport &&
          other.reports == reports &&
          other.tags == tags &&
          other.layoutAttachmentId == layoutAttachmentId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (layout == null ? 0 : layout!.hashCode) +
      (templateLayout == null ? 0 : templateLayout!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (guid == null ? 0 : guid!.hashCode) +
      (group == null ? 0 : group!.hashCode) +
      (descr == null ? 0 : descr!.hashCode) +
      (disabled == null ? 0 : disabled!.hashCode) +
      (specialty == null ? 0 : specialty!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (formInstancePreferredLocation == null ? 0 : formInstancePreferredLocation!.hashCode) +
      (keyboardShortcut == null ? 0 : keyboardShortcut!.hashCode) +
      (shortReport == null ? 0 : shortReport!.hashCode) +
      (mediumReport == null ? 0 : mediumReport!.hashCode) +
      (longReport == null ? 0 : longReport!.hashCode) +
      (reports.hashCode) +
      (tags.hashCode) +
      (layoutAttachmentId == null ? 0 : layoutAttachmentId!.hashCode);

  @override
  String toString() =>
      'FormTemplateDto[id=$id, rev=$rev, deletionDate=$deletionDate, layout=$layout, templateLayout=$templateLayout, name=$name, guid=$guid, group=$group, descr=$descr, disabled=$disabled, specialty=$specialty, author=$author, formInstancePreferredLocation=$formInstancePreferredLocation, keyboardShortcut=$keyboardShortcut, shortReport=$shortReport, mediumReport=$mediumReport, longReport=$longReport, reports=$reports, tags=$tags, layoutAttachmentId=$layoutAttachmentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (layout != null) {
      json[r'layout'] = layout;
    }
    if (templateLayout != null) {
      json[r'templateLayout'] = templateLayout;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (guid != null) {
      json[r'guid'] = guid;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (disabled != null) {
      json[r'disabled'] = disabled;
    }
    if (specialty != null) {
      json[r'specialty'] = specialty;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (formInstancePreferredLocation != null) {
      json[r'formInstancePreferredLocation'] = formInstancePreferredLocation;
    }
    if (keyboardShortcut != null) {
      json[r'keyboardShortcut'] = keyboardShortcut;
    }
    if (shortReport != null) {
      json[r'shortReport'] = shortReport;
    }
    if (mediumReport != null) {
      json[r'mediumReport'] = mediumReport;
    }
    if (longReport != null) {
      json[r'longReport'] = longReport;
    }
    json[r'reports'] = reports.toList();
    json[r'tags'] = tags.toList();
    if (layoutAttachmentId != null) {
      json[r'layoutAttachmentId'] = layoutAttachmentId;
    }
    return json;
  }

  /// Returns a new [FormTemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormTemplateDto? fromJson(dynamic value) {
    if (value is FormTemplateDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormTemplateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormTemplateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormTemplateDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        layout: FormLayout.fromJson(json[r'layout']),
        templateLayout: FormTemplateLayout.fromJson(json[r'templateLayout']),
        name: mapValueOfType<String>(json, r'name'),
        guid: mapValueOfType<String>(json, r'guid'),
        group: DocumentGroupDto.fromJson(json[r'group']),
        descr: mapValueOfType<String>(json, r'descr'),
        disabled: mapValueOfType<String>(json, r'disabled'),
        specialty: CodeStubDto.fromJson(json[r'specialty']),
        author: mapValueOfType<String>(json, r'author'),
        formInstancePreferredLocation: mapValueOfType<String>(json, r'formInstancePreferredLocation'),
        keyboardShortcut: mapValueOfType<String>(json, r'keyboardShortcut'),
        shortReport: mapValueOfType<String>(json, r'shortReport'),
        mediumReport: mapValueOfType<String>(json, r'mediumReport'),
        longReport: mapValueOfType<String>(json, r'longReport'),
        reports: json[r'reports'] is Set
            ? (json[r'reports'] as Set).cast<String>()
            : json[r'reports'] is List
                ? ((json[r'reports'] as List).toSet()).cast<String>()
                : const {},
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        layoutAttachmentId: mapValueOfType<String>(json, r'layoutAttachmentId'),
      );
    }
    return null;
  }

  static List<FormTemplateDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FormTemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormTemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormTemplateDto> mapFromJson(dynamic json) {
    final map = <String, FormTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormTemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormTemplateDto-objects as value to a dart map
  static Map<String, List<FormTemplateDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FormTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormTemplateDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'reports',
    'tags',
  };
}
