//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EpisodeDto {
  /// Returns a new [EpisodeDto] instance.
  EpisodeDto({
    @required this.id,
    this.name,
    this.comment,
    this.startDate,
    this.endDate,
    this.encryptedSelf,
  });

  String id;

  String name;

  String comment;

  int startDate;

  int endDate;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EpisodeDto &&
     other.id == id &&
     other.name == name &&
     other.comment == comment &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'EpisodeDto[id=$id, name=$name, comment=$comment, startDate=$startDate, endDate=$endDate, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [EpisodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EpisodeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EpisodeDto(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        comment: mapValueOfType<String>(json, r'comment'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<EpisodeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EpisodeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EpisodeDto>[];

  static Map<String, EpisodeDto> mapFromJson(dynamic json) {
    final map = <String, EpisodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EpisodeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EpisodeDto-objects as value to a dart map
  static Map<String, List<EpisodeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EpisodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EpisodeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

