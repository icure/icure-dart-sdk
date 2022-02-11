//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class EmailTemplateDto {
  /// Returns a new [EmailTemplateDto] instance.
  EmailTemplateDto({
    this.subject,
    this.body,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is EmailTemplateDto &&
          other.subject == subject &&
          other.body == body;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (subject == null ? 0 : subject!.hashCode) +
      (body == null ? 0 : body!.hashCode);

  @override
  String toString() => 'EmailTemplateDto[subject=$subject, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [EmailTemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailTemplateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailTemplateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailTemplateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailTemplateDto(
        subject: mapValueOfType<String>(json, r'subject'),
        body: mapValueOfType<String>(json, r'body'),
      );
    }
    return null;
  }

  static List<EmailTemplateDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailTemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailTemplateDto> mapFromJson(dynamic json) {
    final map = <String, EmailTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailTemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailTemplateDto-objects as value to a dart map
  static Map<String, List<EmailTemplateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailTemplateDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

