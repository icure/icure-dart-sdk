//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Formula {
  /// Returns a new [Formula] instance.
  Formula({
    this.value,
    this.lifecycle,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  FormulaLifecycleEnum? lifecycle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Formula &&
     other.value == value &&
     other.lifecycle == lifecycle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (lifecycle == null ? 0 : lifecycle!.hashCode);

  @override
  String toString() => 'Formula[value=$value, lifecycle=$lifecycle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (lifecycle != null) {
      json[r'lifecycle'] = lifecycle;
    }
    return json;
  }

  /// Returns a new [Formula] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Formula? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Formula[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Formula[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Formula(
        value: mapValueOfType<String>(json, r'value'),
        lifecycle: FormulaLifecycleEnum.fromJson(json[r'lifecycle']),
      );
    }
    return null;
  }

  static List<Formula>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Formula>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Formula.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Formula> mapFromJson(dynamic json) {
    final map = <String, Formula>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Formula.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Formula-objects as value to a dart map
  static Map<String, List<Formula>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Formula>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Formula.listFromJson(entry.value, growable: growable,);
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


class FormulaLifecycleEnum {
  /// Instantiate a new enum with the provided [value].
  const FormulaLifecycleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const onCreate = FormulaLifecycleEnum._(r'OnCreate');
  static const onLoad = FormulaLifecycleEnum._(r'OnLoad');
  static const onChange = FormulaLifecycleEnum._(r'OnChange');
  static const onSave = FormulaLifecycleEnum._(r'OnSave');
  static const onDestroy = FormulaLifecycleEnum._(r'OnDestroy');
  static const onLoadPropertiesEditor = FormulaLifecycleEnum._(r'OnLoadPropertiesEditor');

  /// List of all possible values in this [enum][FormulaLifecycleEnum].
  static const values = <FormulaLifecycleEnum>[
    onCreate,
    onLoad,
    onChange,
    onSave,
    onDestroy,
    onLoadPropertiesEditor,
  ];

  static FormulaLifecycleEnum? fromJson(dynamic value) => FormulaLifecycleEnumTypeTransformer().decode(value);

  static List<FormulaLifecycleEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormulaLifecycleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormulaLifecycleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FormulaLifecycleEnum] to String,
/// and [decode] dynamic data back to [FormulaLifecycleEnum].
class FormulaLifecycleEnumTypeTransformer {
  factory FormulaLifecycleEnumTypeTransformer() => _instance ??= const FormulaLifecycleEnumTypeTransformer._();

  const FormulaLifecycleEnumTypeTransformer._();

  String encode(FormulaLifecycleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FormulaLifecycleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormulaLifecycleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'OnCreate': return FormulaLifecycleEnum.onCreate;
        case r'OnLoad': return FormulaLifecycleEnum.onLoad;
        case r'OnChange': return FormulaLifecycleEnum.onChange;
        case r'OnSave': return FormulaLifecycleEnum.onSave;
        case r'OnDestroy': return FormulaLifecycleEnum.onDestroy;
        case r'OnLoadPropertiesEditor': return FormulaLifecycleEnum.onLoadPropertiesEditor;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormulaLifecycleEnumTypeTransformer] instance.
  static FormulaLifecycleEnumTypeTransformer? _instance;
}


