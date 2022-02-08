//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DelegationDto {
  /// Returns a new [DelegationDto] instance.
  DelegationDto({
    this.owner,
    this.delegatedTo,
    this.key,
    this.tags = const [],
  });

  String owner;

  String delegatedTo;

  String key;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DelegationDto &&
     other.owner == owner &&
     other.delegatedTo == delegatedTo &&
     other.key == key &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (owner == null ? 0 : owner.hashCode) +
    (delegatedTo == null ? 0 : delegatedTo.hashCode) +
    (key == null ? 0 : key.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'DelegationDto[owner=$owner, delegatedTo=$delegatedTo, key=$key, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (delegatedTo != null) {
      json[r'delegatedTo'] = delegatedTo;
    }
    if (key != null) {
      json[r'key'] = key;
    }
      json[r'tags'] = tags;
    return json;
  }

  /// Returns a new [DelegationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DelegationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DelegationDto(
        owner: mapValueOfType<String>(json, r'owner'),
        delegatedTo: mapValueOfType<String>(json, r'delegatedTo'),
        key: mapValueOfType<String>(json, r'key'),
        tags: json[r'tags'] is List
          ? (json[r'tags'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<DelegationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DelegationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DelegationDto>[];

  static Map<String, DelegationDto> mapFromJson(dynamic json) {
    final map = <String, DelegationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DelegationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DelegationDto-objects as value to a dart map
  static Map<String, Set<DelegationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, Set<DelegationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DelegationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          ).toSet();
        });
    }
    return map;
  }
}

