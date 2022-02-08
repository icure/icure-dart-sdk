//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VmpGroupDto {
  /// Returns a new [VmpGroupDto] instance.
  VmpGroupDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.from,
    this.to,
    this.productId,
    this.code,
    this.name,
    this.noGenericPrescriptionReason,
    this.noSwitchReason,
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
  String? productId;

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
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NoGenericPrescriptionReasonDto? noGenericPrescriptionReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NoSwitchReasonDto? noSwitchReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpGroupDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.from == from &&
     other.to == to &&
     other.productId == productId &&
     other.code == code &&
     other.name == name &&
     other.noGenericPrescriptionReason == noGenericPrescriptionReason &&
     other.noSwitchReason == noSwitchReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (productId == null ? 0 : productId!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (noGenericPrescriptionReason == null ? 0 : noGenericPrescriptionReason!.hashCode) +
    (noSwitchReason == null ? 0 : noSwitchReason!.hashCode);

  @override
  String toString() => 'VmpGroupDto[id=$id, rev=$rev, deletionDate=$deletionDate, from=$from, to=$to, productId=$productId, code=$code, name=$name, noGenericPrescriptionReason=$noGenericPrescriptionReason, noSwitchReason=$noSwitchReason]';

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
    if (productId != null) {
      json[r'productId'] = productId;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (noGenericPrescriptionReason != null) {
      json[r'noGenericPrescriptionReason'] = noGenericPrescriptionReason;
    }
    if (noSwitchReason != null) {
      json[r'noSwitchReason'] = noSwitchReason;
    }
    return json;
  }

  /// Returns a new [VmpGroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpGroupDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VmpGroupDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VmpGroupDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VmpGroupDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        productId: mapValueOfType<String>(json, r'productId'),
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        noGenericPrescriptionReason: NoGenericPrescriptionReasonDto.fromJson(json[r'noGenericPrescriptionReason']),
        noSwitchReason: NoSwitchReasonDto.fromJson(json[r'noSwitchReason']),
      );
    }
    return null;
  }

  static List<VmpGroupDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VmpGroupDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VmpGroupDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VmpGroupDto> mapFromJson(dynamic json) {
    final map = <String, VmpGroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpGroupDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VmpGroupDto-objects as value to a dart map
  static Map<String, List<VmpGroupDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VmpGroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpGroupDto.listFromJson(entry.value, growable: growable,);
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

