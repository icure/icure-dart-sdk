//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTemplateDto {
  /// Returns a new [EmailTemplateDto] instance.
  EmailTemplateDto({
    this.subject,
    this.body,
  });

  String subject;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailTemplateDto &&
     other.subject == subject &&
     other.body == body;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject.hashCode) +
    (body == null ? 0 : body.hashCode);

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
  static EmailTemplateDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EmailTemplateDto(
        subject: mapValueOfType<String>(json, r'subject'),
        body: mapValueOfType<String>(json, r'body'),
      );
    }
    return null;
  }

  static List<EmailTemplateDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EmailTemplateDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EmailTemplateDto>[];

  static Map<String, EmailTemplateDto> mapFromJson(dynamic json) {
    final map = <String, EmailTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EmailTemplateDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailTemplateDto-objects as value to a dart map
  static Map<String, List<EmailTemplateDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EmailTemplateDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

