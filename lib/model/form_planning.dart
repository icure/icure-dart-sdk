//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FormPlanning {
  /// Returns a new [FormPlanning] instance.
  FormPlanning({
    this.planninfForAnyDoctor,
    this.planningForDelegate,
    this.planningForPatientDoctor,
    this.planningForMe,
    this.codedDelayInDays,
    this.repetitions,
    this.repetitionsUnit,
    this.descr,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? planninfForAnyDoctor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? planningForDelegate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? planningForPatientDoctor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? planningForMe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codedDelayInDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repetitions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repetitionsUnit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormPlanning &&
          other.planninfForAnyDoctor == planninfForAnyDoctor &&
          other.planningForDelegate == planningForDelegate &&
          other.planningForPatientDoctor == planningForPatientDoctor &&
          other.planningForMe == planningForMe &&
          other.codedDelayInDays == codedDelayInDays &&
          other.repetitions == repetitions &&
          other.repetitionsUnit == repetitionsUnit &&
          other.descr == descr;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (planninfForAnyDoctor == null ? 0 : planninfForAnyDoctor!.hashCode) +
      (planningForDelegate == null ? 0 : planningForDelegate!.hashCode) +
      (planningForPatientDoctor == null ? 0 : planningForPatientDoctor!.hashCode) +
      (planningForMe == null ? 0 : planningForMe!.hashCode) +
      (codedDelayInDays == null ? 0 : codedDelayInDays!.hashCode) +
      (repetitions == null ? 0 : repetitions!.hashCode) +
      (repetitionsUnit == null ? 0 : repetitionsUnit!.hashCode) +
      (descr == null ? 0 : descr!.hashCode);

  @override
  String toString() =>
      'FormPlanning[planninfForAnyDoctor=$planninfForAnyDoctor, planningForDelegate=$planningForDelegate, planningForPatientDoctor=$planningForPatientDoctor, planningForMe=$planningForMe, codedDelayInDays=$codedDelayInDays, repetitions=$repetitions, repetitionsUnit=$repetitionsUnit, descr=$descr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (planninfForAnyDoctor != null) {
      json[r'planninfForAnyDoctor'] = planninfForAnyDoctor;
    }
    if (planningForDelegate != null) {
      json[r'planningForDelegate'] = planningForDelegate;
    }
    if (planningForPatientDoctor != null) {
      json[r'planningForPatientDoctor'] = planningForPatientDoctor;
    }
    if (planningForMe != null) {
      json[r'planningForMe'] = planningForMe;
    }
    if (codedDelayInDays != null) {
      json[r'codedDelayInDays'] = codedDelayInDays;
    }
    if (repetitions != null) {
      json[r'repetitions'] = repetitions;
    }
    if (repetitionsUnit != null) {
      json[r'repetitionsUnit'] = repetitionsUnit;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    return json;
  }

  /// Returns a new [FormPlanning] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormPlanning? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormPlanning[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormPlanning[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormPlanning(
        planninfForAnyDoctor: mapValueOfType<bool>(json, r'planninfForAnyDoctor'),
        planningForDelegate: mapValueOfType<bool>(json, r'planningForDelegate'),
        planningForPatientDoctor: mapValueOfType<bool>(json, r'planningForPatientDoctor'),
        planningForMe: mapValueOfType<bool>(json, r'planningForMe'),
        codedDelayInDays: mapValueOfType<int>(json, r'codedDelayInDays'),
        repetitions: mapValueOfType<int>(json, r'repetitions'),
        repetitionsUnit: mapValueOfType<int>(json, r'repetitionsUnit'),
        descr: mapValueOfType<String>(json, r'descr'),
      );
    }
    return null;
  }

  static List<FormPlanning>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FormPlanning>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormPlanning.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormPlanning> mapFromJson(dynamic json) {
    final map = <String, FormPlanning>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormPlanning.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormPlanning-objects as value to a dart map
  static Map<String, List<FormPlanning>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FormPlanning>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormPlanning.listFromJson(
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
  static const requiredKeys = <String>{};
}
