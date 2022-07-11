//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class VmpDto {
  /// Returns a new [VmpDto] instance.
  VmpDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.from,
    this.to,
    this.code,
    this.vmpGroup,
    this.name,
    this.abbreviation,
    this.vtm,
    this.wadas = const [],
    this.components = const [],
    this.commentedClassifications = const [],
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
  VmpGroupStubDto? vmpGroup;

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
  SamTextDto? abbreviation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VtmDto? vtm;

  List<WadaDto> wadas;

  List<VmpComponentDto> components;

  List<CommentedClassificationDto> commentedClassifications;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VmpDto &&
          other.id == id &&
          other.rev == rev &&
          other.deletionDate == deletionDate &&
          other.from == from &&
          other.to == to &&
          other.code == code &&
          other.vmpGroup == vmpGroup &&
          other.name == name &&
          other.abbreviation == abbreviation &&
          other.vtm == vtm &&
          other.wadas == wadas &&
          other.components == components &&
          other.commentedClassifications == commentedClassifications;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (from == null ? 0 : from!.hashCode) +
      (to == null ? 0 : to!.hashCode) +
      (code == null ? 0 : code!.hashCode) +
      (vmpGroup == null ? 0 : vmpGroup!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (abbreviation == null ? 0 : abbreviation!.hashCode) +
      (vtm == null ? 0 : vtm!.hashCode) +
      (wadas.hashCode) +
      (components.hashCode) +
      (commentedClassifications.hashCode);

  @override
  String toString() =>
      'VmpDto[id=$id, rev=$rev, deletionDate=$deletionDate, from=$from, to=$to, code=$code, vmpGroup=$vmpGroup, name=$name, abbreviation=$abbreviation, vtm=$vtm, wadas=$wadas, components=$components, commentedClassifications=$commentedClassifications]';

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
    if (vmpGroup != null) {
      json[r'vmpGroup'] = vmpGroup;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (abbreviation != null) {
      json[r'abbreviation'] = abbreviation;
    }
    if (vtm != null) {
      json[r'vtm'] = vtm;
    }
    json[r'wadas'] = wadas;
    json[r'components'] = components;
    json[r'commentedClassifications'] = commentedClassifications;
    return json;
  }

  /// Returns a new [VmpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpDto? fromJson(dynamic value) {
    if (value is VmpDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VmpDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VmpDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VmpDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        code: mapValueOfType<String>(json, r'code'),
        vmpGroup: VmpGroupStubDto.fromJson(json[r'vmpGroup']),
        name: SamTextDto.fromJson(json[r'name']),
        abbreviation: SamTextDto.fromJson(json[r'abbreviation']),
        vtm: VtmDto.fromJson(json[r'vtm']),
        wadas: WadaDto.listFromJson(json[r'wadas']) ?? const [],
        components: VmpComponentDto.listFromJson(json[r'components']) ?? const [],
        commentedClassifications: CommentedClassificationDto.listFromJson(json[r'commentedClassifications']) ?? const [],
      );
    }
    return null;
  }

  static List<VmpDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VmpDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VmpDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VmpDto> mapFromJson(dynamic json) {
    final map = <String, VmpDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VmpDto-objects as value to a dart map
  static Map<String, List<VmpDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VmpDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpDto.listFromJson(
          entry.value,
          growable: growable,
        );
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
