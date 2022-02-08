//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NmpDto {
  /// Returns a new [NmpDto] instance.
  NmpDto({
    required this.id,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commercialStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? producer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? distributor;

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
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (productId == null ? 0 : productId!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (commercialStatus == null ? 0 : commercialStatus!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (producer == null ? 0 : producer!.hashCode) +
    (distributor == null ? 0 : distributor!.hashCode);

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
  static NmpDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NmpDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NmpDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NmpDto(
        id: mapValueOfType<String>(json, r'id')!,
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

  static List<NmpDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NmpDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NmpDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NmpDto> mapFromJson(dynamic json) {
    final map = <String, NmpDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NmpDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NmpDto-objects as value to a dart map
  static Map<String, List<NmpDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NmpDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NmpDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

