//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MedicinalproductDto {
  /// Returns a new [MedicinalproductDto] instance.
  MedicinalproductDto({
    this.intendedcds = const [],
    this.deliveredcds = const [],
    this.intendedname,
    this.deliveredname,
    this.productId,
  });

  List<CodeStubDto> intendedcds;

  List<CodeStubDto> deliveredcds;

  String intendedname;

  String deliveredname;

  String productId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MedicinalproductDto &&
     other.intendedcds == intendedcds &&
     other.deliveredcds == deliveredcds &&
     other.intendedname == intendedname &&
     other.deliveredname == deliveredname &&
     other.productId == productId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (intendedcds == null ? 0 : intendedcds.hashCode) +
    (deliveredcds == null ? 0 : deliveredcds.hashCode) +
    (intendedname == null ? 0 : intendedname.hashCode) +
    (deliveredname == null ? 0 : deliveredname.hashCode) +
    (productId == null ? 0 : productId.hashCode);

  @override
  String toString() => 'MedicinalproductDto[intendedcds=$intendedcds, deliveredcds=$deliveredcds, intendedname=$intendedname, deliveredname=$deliveredname, productId=$productId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'intendedcds'] = intendedcds;
      json[r'deliveredcds'] = deliveredcds;
    if (intendedname != null) {
      json[r'intendedname'] = intendedname;
    }
    if (deliveredname != null) {
      json[r'deliveredname'] = deliveredname;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    return json;
  }

  /// Returns a new [MedicinalproductDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicinalproductDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MedicinalproductDto(
        intendedcds: CodeStubDto.listFromJson(json[r'intendedcds']),
        deliveredcds: CodeStubDto.listFromJson(json[r'deliveredcds']),
        intendedname: mapValueOfType<String>(json, r'intendedname'),
        deliveredname: mapValueOfType<String>(json, r'deliveredname'),
        productId: mapValueOfType<String>(json, r'productId'),
      );
    }
    return null;
  }

  static List<MedicinalproductDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MedicinalproductDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MedicinalproductDto>[];

  static Map<String, MedicinalproductDto> mapFromJson(dynamic json) {
    final map = <String, MedicinalproductDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MedicinalproductDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MedicinalproductDto-objects as value to a dart map
  static Map<String, List<MedicinalproductDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MedicinalproductDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MedicinalproductDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

