//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EIDItem {
  /// Returns a new [EIDItem] instance.
  EIDItem({
    this.deviceType,
    this.readDate,
    this.readHour = 0,
    this.readType,
    this.readvalue,
  });

  String deviceType;

  int readDate;

  int readHour;

  String readType;

  String readvalue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EIDItem &&
     other.deviceType == deviceType &&
     other.readDate == readDate &&
     other.readHour == readHour &&
     other.readType == readType &&
     other.readvalue == readvalue;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (deviceType == null ? 0 : deviceType.hashCode) +
    (readDate == null ? 0 : readDate.hashCode) +
    (readHour == null ? 0 : readHour.hashCode) +
    (readType == null ? 0 : readType.hashCode) +
    (readvalue == null ? 0 : readvalue.hashCode);

  @override
  String toString() => 'EIDItem[deviceType=$deviceType, readDate=$readDate, readHour=$readHour, readType=$readType, readvalue=$readvalue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (deviceType != null) {
      json[r'deviceType'] = deviceType;
    }
    if (readDate != null) {
      json[r'readDate'] = readDate;
    }
      json[r'readHour'] = readHour;
    if (readType != null) {
      json[r'readType'] = readType;
    }
    if (readvalue != null) {
      json[r'readvalue'] = readvalue;
    }
    return json;
  }

  /// Returns a new [EIDItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EIDItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EIDItem(
        deviceType: mapValueOfType<String>(json, r'deviceType'),
        readDate: mapValueOfType<int>(json, r'readDate'),
        readHour: mapValueOfType<int>(json, r'readHour'),
        readType: mapValueOfType<String>(json, r'readType'),
        readvalue: mapValueOfType<String>(json, r'readvalue'),
      );
    }
    return null;
  }

  static List<EIDItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EIDItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EIDItem>[];

  static Map<String, EIDItem> mapFromJson(dynamic json) {
    final map = <String, EIDItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EIDItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EIDItem-objects as value to a dart map
  static Map<String, List<EIDItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EIDItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EIDItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

