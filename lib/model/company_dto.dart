//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompanyDto {
  /// Returns a new [CompanyDto] instance.
  CompanyDto({
    this.from,
    this.to,
    this.authorisationNr,
    this.vatNr = const {},
    this.europeanNr,
    this.denomination,
    this.legalForm,
    this.building,
    this.streetName,
    this.streetNum,
    this.postbox,
    this.postcode,
    this.city,
    this.countryCode,
    this.phone,
    this.language,
    this.website,
  });

  int from;

  int to;

  String authorisationNr;

  Map<String, String> vatNr;

  String europeanNr;

  String denomination;

  String legalForm;

  String building;

  String streetName;

  String streetNum;

  String postbox;

  String postcode;

  String city;

  String countryCode;

  String phone;

  String language;

  String website;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompanyDto &&
     other.from == from &&
     other.to == to &&
     other.authorisationNr == authorisationNr &&
     other.vatNr == vatNr &&
     other.europeanNr == europeanNr &&
     other.denomination == denomination &&
     other.legalForm == legalForm &&
     other.building == building &&
     other.streetName == streetName &&
     other.streetNum == streetNum &&
     other.postbox == postbox &&
     other.postcode == postcode &&
     other.city == city &&
     other.countryCode == countryCode &&
     other.phone == phone &&
     other.language == language &&
     other.website == website;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (authorisationNr == null ? 0 : authorisationNr.hashCode) +
    (vatNr == null ? 0 : vatNr.hashCode) +
    (europeanNr == null ? 0 : europeanNr.hashCode) +
    (denomination == null ? 0 : denomination.hashCode) +
    (legalForm == null ? 0 : legalForm.hashCode) +
    (building == null ? 0 : building.hashCode) +
    (streetName == null ? 0 : streetName.hashCode) +
    (streetNum == null ? 0 : streetNum.hashCode) +
    (postbox == null ? 0 : postbox.hashCode) +
    (postcode == null ? 0 : postcode.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (countryCode == null ? 0 : countryCode.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (website == null ? 0 : website.hashCode);

  @override
  String toString() => 'CompanyDto[from=$from, to=$to, authorisationNr=$authorisationNr, vatNr=$vatNr, europeanNr=$europeanNr, denomination=$denomination, legalForm=$legalForm, building=$building, streetName=$streetName, streetNum=$streetNum, postbox=$postbox, postcode=$postcode, city=$city, countryCode=$countryCode, phone=$phone, language=$language, website=$website]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (authorisationNr != null) {
      json[r'authorisationNr'] = authorisationNr;
    }
    if (vatNr != null) {
      json[r'vatNr'] = vatNr;
    }
    if (europeanNr != null) {
      json[r'europeanNr'] = europeanNr;
    }
    if (denomination != null) {
      json[r'denomination'] = denomination;
    }
    if (legalForm != null) {
      json[r'legalForm'] = legalForm;
    }
    if (building != null) {
      json[r'building'] = building;
    }
    if (streetName != null) {
      json[r'streetName'] = streetName;
    }
    if (streetNum != null) {
      json[r'streetNum'] = streetNum;
    }
    if (postbox != null) {
      json[r'postbox'] = postbox;
    }
    if (postcode != null) {
      json[r'postcode'] = postcode;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (countryCode != null) {
      json[r'countryCode'] = countryCode;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (website != null) {
      json[r'website'] = website;
    }
    return json;
  }

  /// Returns a new [CompanyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompanyDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CompanyDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        authorisationNr: mapValueOfType<String>(json, r'authorisationNr'),
        vatNr: mapCastOfType<String, String>(json, r'vatNr'),
        europeanNr: mapValueOfType<String>(json, r'europeanNr'),
        denomination: mapValueOfType<String>(json, r'denomination'),
        legalForm: mapValueOfType<String>(json, r'legalForm'),
        building: mapValueOfType<String>(json, r'building'),
        streetName: mapValueOfType<String>(json, r'streetName'),
        streetNum: mapValueOfType<String>(json, r'streetNum'),
        postbox: mapValueOfType<String>(json, r'postbox'),
        postcode: mapValueOfType<String>(json, r'postcode'),
        city: mapValueOfType<String>(json, r'city'),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        phone: mapValueOfType<String>(json, r'phone'),
        language: mapValueOfType<String>(json, r'language'),
        website: mapValueOfType<String>(json, r'website'),
      );
    }
    return null;
  }

  static List<CompanyDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CompanyDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CompanyDto>[];

  static Map<String, CompanyDto> mapFromJson(dynamic json) {
    final map = <String, CompanyDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CompanyDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CompanyDto-objects as value to a dart map
  static Map<String, List<CompanyDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CompanyDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CompanyDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

