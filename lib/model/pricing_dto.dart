//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PricingDto {
  /// Returns a new [PricingDto] instance.
  PricingDto({
    this.quantity,
    this.label,
  });

  num quantity;

  SamTextDto label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingDto &&
     other.quantity == quantity &&
     other.label == label;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (quantity == null ? 0 : quantity.hashCode) +
    (label == null ? 0 : label.hashCode);

  @override
  String toString() => 'PricingDto[quantity=$quantity, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (quantity != null) {
      json[r'quantity'] = quantity;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    return json;
  }

  /// Returns a new [PricingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PricingDto(
        quantity: json[r'quantity'] == null
          ? null
          : num.parse(json[r'quantity'].toString()),
        label: SamTextDto.fromJson(json[r'label']),
      );
    }
    return null;
  }

  static List<PricingDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PricingDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PricingDto>[];

  static Map<String, PricingDto> mapFromJson(dynamic json) {
    final map = <String, PricingDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PricingDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PricingDto-objects as value to a dart map
  static Map<String, List<PricingDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PricingDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PricingDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

