//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NmpDto {
  /// Returns a new [NmpDto] instance.
  NmpDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.from,
    this.to,
    this.code,
    this.productId,
    this.category,
    this.commercialStatus,
    this.name,
    this.producer,
    this.distributor,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  int from;

  int to;

  String code;

  String productId;

  String category;

  String commercialStatus;

  SamTextDto name;

  SamTextDto producer;

  SamTextDto distributor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NmpDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.from == from &&
     other.to == to &&
     other.code == code &&
     other.productId == productId &&
     other.category == category &&
     other.commercialStatus == commercialStatus &&
     other.name == name &&
     other.producer == producer &&
     other.distributor == distributor;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (productId == null ? 0 : productId.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (commercialStatus == null ? 0 : commercialStatus.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (producer == null ? 0 : producer.hashCode) +
    (distributor == null ? 0 : distributor.hashCode);

  @override
  String toString() => 'NmpDto[id=$id, rev=$rev, deletionDate=$deletionDate, from=$from, to=$to, code=$code, productId=$productId, category=$category, commercialStatus=$commercialStatus, name=$name, producer=$producer, distributor=$distributor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    if (commercialStatus != null) {
      json[r'commercialStatus'] = commercialStatus;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (producer != null) {
      json[r'producer'] = producer;
    }
    if (distributor != null) {
      json[r'distributor'] = distributor;
    }
    return json;
  }

  /// Returns a new [NmpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NmpDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NmpDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        code: mapValueOfType<String>(json, r'code'),
        productId: mapValueOfType<String>(json, r'productId'),
        category: mapValueOfType<String>(json, r'category'),
        commercialStatus: mapValueOfType<String>(json, r'commercialStatus'),
        name: SamTextDto.fromJson(json[r'name']),
        producer: SamTextDto.fromJson(json[r'producer']),
        distributor: SamTextDto.fromJson(json[r'distributor']),
      );
    }
    return null;
  }

  static List<NmpDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NmpDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NmpDto>[];

  static Map<String, NmpDto> mapFromJson(dynamic json) {
    final map = <String, NmpDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NmpDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NmpDto-objects as value to a dart map
  static Map<String, List<NmpDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NmpDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NmpDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

