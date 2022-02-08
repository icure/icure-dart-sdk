//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  bool planninfForAnyDoctor;

  bool planningForDelegate;

  bool planningForPatientDoctor;

  bool planningForMe;

  int codedDelayInDays;

  int repetitions;

  int repetitionsUnit;

  String descr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormPlanning &&
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
    (planninfForAnyDoctor == null ? 0 : planninfForAnyDoctor.hashCode) +
    (planningForDelegate == null ? 0 : planningForDelegate.hashCode) +
    (planningForPatientDoctor == null ? 0 : planningForPatientDoctor.hashCode) +
    (planningForMe == null ? 0 : planningForMe.hashCode) +
    (codedDelayInDays == null ? 0 : codedDelayInDays.hashCode) +
    (repetitions == null ? 0 : repetitions.hashCode) +
    (repetitionsUnit == null ? 0 : repetitionsUnit.hashCode) +
    (descr == null ? 0 : descr.hashCode);

  @override
  String toString() => 'FormPlanning[planninfForAnyDoctor=$planninfForAnyDoctor, planningForDelegate=$planningForDelegate, planningForPatientDoctor=$planningForPatientDoctor, planningForMe=$planningForMe, codedDelayInDays=$codedDelayInDays, repetitions=$repetitions, repetitionsUnit=$repetitionsUnit, descr=$descr]';

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
  static FormPlanning fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<FormPlanning> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormPlanning.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormPlanning>[];

  static Map<String, FormPlanning> mapFromJson(dynamic json) {
    final map = <String, FormPlanning>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormPlanning.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormPlanning-objects as value to a dart map
  static Map<String, List<FormPlanning>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormPlanning>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormPlanning.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

