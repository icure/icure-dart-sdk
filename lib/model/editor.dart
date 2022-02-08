//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Editor {
  /// Returns a new [Editor] instance.
  Editor({
    this.left,
    this.top,
    this.width,
    this.height,
    this.multiline,
    this.labelPosition,
    this.readOnly,
    this.defaultValue,
    this.key,
  });

  double left;

  double top;

  double width;

  double height;

  bool multiline;

  EditorLabelPositionEnum labelPosition;

  bool readOnly;

  Object defaultValue;

  String key;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Editor &&
     other.left == left &&
     other.top == top &&
     other.width == width &&
     other.height == height &&
     other.multiline == multiline &&
     other.labelPosition == labelPosition &&
     other.readOnly == readOnly &&
     other.defaultValue == defaultValue &&
     other.key == key;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (left == null ? 0 : left.hashCode) +
    (top == null ? 0 : top.hashCode) +
    (width == null ? 0 : width.hashCode) +
    (height == null ? 0 : height.hashCode) +
    (multiline == null ? 0 : multiline.hashCode) +
    (labelPosition == null ? 0 : labelPosition.hashCode) +
    (readOnly == null ? 0 : readOnly.hashCode) +
    (defaultValue == null ? 0 : defaultValue.hashCode) +
    (key == null ? 0 : key.hashCode);

  @override
  String toString() => 'Editor[left=$left, top=$top, width=$width, height=$height, multiline=$multiline, labelPosition=$labelPosition, readOnly=$readOnly, defaultValue=$defaultValue, key=$key]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (left != null) {
      json[r'left'] = left;
    }
    if (top != null) {
      json[r'top'] = top;
    }
    if (width != null) {
      json[r'width'] = width;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (multiline != null) {
      json[r'multiline'] = multiline;
    }
    if (labelPosition != null) {
      json[r'labelPosition'] = labelPosition;
    }
    if (readOnly != null) {
      json[r'readOnly'] = readOnly;
    }
    if (defaultValue != null) {
      json[r'defaultValue'] = defaultValue;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    return json;
  }

  /// Returns a new [Editor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Editor fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Editor(
        left: mapValueOfType<double>(json, r'left'),
        top: mapValueOfType<double>(json, r'top'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        multiline: mapValueOfType<bool>(json, r'multiline'),
        labelPosition: EditorLabelPositionEnum.fromJson(json[r'labelPosition']),
        readOnly: mapValueOfType<bool>(json, r'readOnly'),
        defaultValue: mapValueOfType<Object>(json, r'defaultValue'),
        key: mapValueOfType<String>(json, r'key'),
      );
    }
    return null;
  }

  static List<Editor> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Editor.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Editor>[];

  static Map<String, Editor> mapFromJson(dynamic json) {
    final map = <String, Editor>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Editor.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Editor-objects as value to a dart map
  static Map<String, List<Editor>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Editor>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Editor.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class EditorLabelPositionEnum {
  /// Instantiate a new enum with the provided [value].
  const EditorLabelPositionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const up = EditorLabelPositionEnum._(r'Up');
  static const down = EditorLabelPositionEnum._(r'Down');
  static const left = EditorLabelPositionEnum._(r'Left');
  static const right = EditorLabelPositionEnum._(r'Right');

  /// List of all possible values in this [enum][EditorLabelPositionEnum].
  static const values = <EditorLabelPositionEnum>[
    up,
    down,
    left,
    right,
  ];

  static EditorLabelPositionEnum fromJson(dynamic value) =>
    EditorLabelPositionEnumTypeTransformer().decode(value);

  static List<EditorLabelPositionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EditorLabelPositionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EditorLabelPositionEnum>[];
}

/// Transformation class that can [encode] an instance of [EditorLabelPositionEnum] to String,
/// and [decode] dynamic data back to [EditorLabelPositionEnum].
class EditorLabelPositionEnumTypeTransformer {
  factory EditorLabelPositionEnumTypeTransformer() => _instance ??= const EditorLabelPositionEnumTypeTransformer._();

  const EditorLabelPositionEnumTypeTransformer._();

  String encode(EditorLabelPositionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EditorLabelPositionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EditorLabelPositionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Up': return EditorLabelPositionEnum.up;
        case r'Down': return EditorLabelPositionEnum.down;
        case r'Left': return EditorLabelPositionEnum.left;
        case r'Right': return EditorLabelPositionEnum.right;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EditorLabelPositionEnumTypeTransformer] instance.
  static EditorLabelPositionEnumTypeTransformer _instance;
}


