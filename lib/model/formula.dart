//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String value;

  FormulaLifecycleEnum lifecycle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Formula &&
     other.value == value &&
     other.lifecycle == lifecycle;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (lifecycle == null ? 0 : lifecycle.hashCode);

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
  static Formula fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Formula(
        value: mapValueOfType<String>(json, r'value'),
        lifecycle: FormulaLifecycleEnum.fromJson(json[r'lifecycle']),
      );
    }
    return null;
  }

  static List<Formula> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Formula.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Formula>[];

  static Map<String, Formula> mapFromJson(dynamic json) {
    final map = <String, Formula>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Formula.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Formula-objects as value to a dart map
  static Map<String, List<Formula>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Formula>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Formula.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class FormulaLifecycleEnum {
  /// Instantiate a new enum with the provided [value].
  const FormulaLifecycleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

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

  static FormulaLifecycleEnum fromJson(dynamic value) =>
    FormulaLifecycleEnumTypeTransformer().decode(value);

  static List<FormulaLifecycleEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormulaLifecycleEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormulaLifecycleEnum>[];
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
  FormulaLifecycleEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'OnCreate': return FormulaLifecycleEnum.onCreate;
        case r'OnLoad': return FormulaLifecycleEnum.onLoad;
        case r'OnChange': return FormulaLifecycleEnum.onChange;
        case r'OnSave': return FormulaLifecycleEnum.onSave;
        case r'OnDestroy': return FormulaLifecycleEnum.onDestroy;
        case r'OnLoadPropertiesEditor': return FormulaLifecycleEnum.onLoadPropertiesEditor;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormulaLifecycleEnumTypeTransformer] instance.
  static FormulaLifecycleEnumTypeTransformer _instance;
}


