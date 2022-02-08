//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlowItemDto {
  /// Returns a new [FlowItemDto] instance.
  FlowItemDto({
    this.id,
    this.title,
    this.comment,
    this.receptionDate,
    this.processingDate,
    this.processer,
    this.cancellationDate,
    this.canceller,
    this.cancellationReason,
    this.cancellationNote,
    this.status,
    this.homeVisit,
    this.municipality,
    this.town,
    this.zipCode,
    this.street,
    this.building,
    this.buildingNumber,
    this.doorbellName,
    this.floor,
    this.letterBox,
    this.notesOps,
    this.notesContact,
    this.latitude,
    this.longitude,
    this.type,
    this.emergency,
    this.phoneNumber,
    this.patientId,
    this.patientLastName,
    this.patientFirstName,
    this.description,
    this.interventionCode,
  });

  String id;

  String title;

  String comment;

  int receptionDate;

  int processingDate;

  String processer;

  int cancellationDate;

  String canceller;

  String cancellationReason;

  String cancellationNote;

  String status;

  bool homeVisit;

  String municipality;

  String town;

  String zipCode;

  String street;

  String building;

  String buildingNumber;

  String doorbellName;

  String floor;

  String letterBox;

  String notesOps;

  String notesContact;

  String latitude;

  String longitude;

  String type;

  bool emergency;

  String phoneNumber;

  String patientId;

  String patientLastName;

  String patientFirstName;

  String description;

  String interventionCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowItemDto &&
     other.id == id &&
     other.title == title &&
     other.comment == comment &&
     other.receptionDate == receptionDate &&
     other.processingDate == processingDate &&
     other.processer == processer &&
     other.cancellationDate == cancellationDate &&
     other.canceller == canceller &&
     other.cancellationReason == cancellationReason &&
     other.cancellationNote == cancellationNote &&
     other.status == status &&
     other.homeVisit == homeVisit &&
     other.municipality == municipality &&
     other.town == town &&
     other.zipCode == zipCode &&
     other.street == street &&
     other.building == building &&
     other.buildingNumber == buildingNumber &&
     other.doorbellName == doorbellName &&
     other.floor == floor &&
     other.letterBox == letterBox &&
     other.notesOps == notesOps &&
     other.notesContact == notesContact &&
     other.latitude == latitude &&
     other.longitude == longitude &&
     other.type == type &&
     other.emergency == emergency &&
     other.phoneNumber == phoneNumber &&
     other.patientId == patientId &&
     other.patientLastName == patientLastName &&
     other.patientFirstName == patientFirstName &&
     other.description == description &&
     other.interventionCode == interventionCode;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (receptionDate == null ? 0 : receptionDate.hashCode) +
    (processingDate == null ? 0 : processingDate.hashCode) +
    (processer == null ? 0 : processer.hashCode) +
    (cancellationDate == null ? 0 : cancellationDate.hashCode) +
    (canceller == null ? 0 : canceller.hashCode) +
    (cancellationReason == null ? 0 : cancellationReason.hashCode) +
    (cancellationNote == null ? 0 : cancellationNote.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (homeVisit == null ? 0 : homeVisit.hashCode) +
    (municipality == null ? 0 : municipality.hashCode) +
    (town == null ? 0 : town.hashCode) +
    (zipCode == null ? 0 : zipCode.hashCode) +
    (street == null ? 0 : street.hashCode) +
    (building == null ? 0 : building.hashCode) +
    (buildingNumber == null ? 0 : buildingNumber.hashCode) +
    (doorbellName == null ? 0 : doorbellName.hashCode) +
    (floor == null ? 0 : floor.hashCode) +
    (letterBox == null ? 0 : letterBox.hashCode) +
    (notesOps == null ? 0 : notesOps.hashCode) +
    (notesContact == null ? 0 : notesContact.hashCode) +
    (latitude == null ? 0 : latitude.hashCode) +
    (longitude == null ? 0 : longitude.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (emergency == null ? 0 : emergency.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (patientId == null ? 0 : patientId.hashCode) +
    (patientLastName == null ? 0 : patientLastName.hashCode) +
    (patientFirstName == null ? 0 : patientFirstName.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (interventionCode == null ? 0 : interventionCode.hashCode);

  @override
  String toString() => 'FlowItemDto[id=$id, title=$title, comment=$comment, receptionDate=$receptionDate, processingDate=$processingDate, processer=$processer, cancellationDate=$cancellationDate, canceller=$canceller, cancellationReason=$cancellationReason, cancellationNote=$cancellationNote, status=$status, homeVisit=$homeVisit, municipality=$municipality, town=$town, zipCode=$zipCode, street=$street, building=$building, buildingNumber=$buildingNumber, doorbellName=$doorbellName, floor=$floor, letterBox=$letterBox, notesOps=$notesOps, notesContact=$notesContact, latitude=$latitude, longitude=$longitude, type=$type, emergency=$emergency, phoneNumber=$phoneNumber, patientId=$patientId, patientLastName=$patientLastName, patientFirstName=$patientFirstName, description=$description, interventionCode=$interventionCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (receptionDate != null) {
      json[r'receptionDate'] = receptionDate;
    }
    if (processingDate != null) {
      json[r'processingDate'] = processingDate;
    }
    if (processer != null) {
      json[r'processer'] = processer;
    }
    if (cancellationDate != null) {
      json[r'cancellationDate'] = cancellationDate;
    }
    if (canceller != null) {
      json[r'canceller'] = canceller;
    }
    if (cancellationReason != null) {
      json[r'cancellationReason'] = cancellationReason;
    }
    if (cancellationNote != null) {
      json[r'cancellationNote'] = cancellationNote;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (homeVisit != null) {
      json[r'homeVisit'] = homeVisit;
    }
    if (municipality != null) {
      json[r'municipality'] = municipality;
    }
    if (town != null) {
      json[r'town'] = town;
    }
    if (zipCode != null) {
      json[r'zipCode'] = zipCode;
    }
    if (street != null) {
      json[r'street'] = street;
    }
    if (building != null) {
      json[r'building'] = building;
    }
    if (buildingNumber != null) {
      json[r'buildingNumber'] = buildingNumber;
    }
    if (doorbellName != null) {
      json[r'doorbellName'] = doorbellName;
    }
    if (floor != null) {
      json[r'floor'] = floor;
    }
    if (letterBox != null) {
      json[r'letterBox'] = letterBox;
    }
    if (notesOps != null) {
      json[r'notesOps'] = notesOps;
    }
    if (notesContact != null) {
      json[r'notesContact'] = notesContact;
    }
    if (latitude != null) {
      json[r'latitude'] = latitude;
    }
    if (longitude != null) {
      json[r'longitude'] = longitude;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (emergency != null) {
      json[r'emergency'] = emergency;
    }
    if (phoneNumber != null) {
      json[r'phoneNumber'] = phoneNumber;
    }
    if (patientId != null) {
      json[r'patientId'] = patientId;
    }
    if (patientLastName != null) {
      json[r'patientLastName'] = patientLastName;
    }
    if (patientFirstName != null) {
      json[r'patientFirstName'] = patientFirstName;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (interventionCode != null) {
      json[r'interventionCode'] = interventionCode;
    }
    return json;
  }

  /// Returns a new [FlowItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FlowItemDto(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        comment: mapValueOfType<String>(json, r'comment'),
        receptionDate: mapValueOfType<int>(json, r'receptionDate'),
        processingDate: mapValueOfType<int>(json, r'processingDate'),
        processer: mapValueOfType<String>(json, r'processer'),
        cancellationDate: mapValueOfType<int>(json, r'cancellationDate'),
        canceller: mapValueOfType<String>(json, r'canceller'),
        cancellationReason: mapValueOfType<String>(json, r'cancellationReason'),
        cancellationNote: mapValueOfType<String>(json, r'cancellationNote'),
        status: mapValueOfType<String>(json, r'status'),
        homeVisit: mapValueOfType<bool>(json, r'homeVisit'),
        municipality: mapValueOfType<String>(json, r'municipality'),
        town: mapValueOfType<String>(json, r'town'),
        zipCode: mapValueOfType<String>(json, r'zipCode'),
        street: mapValueOfType<String>(json, r'street'),
        building: mapValueOfType<String>(json, r'building'),
        buildingNumber: mapValueOfType<String>(json, r'buildingNumber'),
        doorbellName: mapValueOfType<String>(json, r'doorbellName'),
        floor: mapValueOfType<String>(json, r'floor'),
        letterBox: mapValueOfType<String>(json, r'letterBox'),
        notesOps: mapValueOfType<String>(json, r'notesOps'),
        notesContact: mapValueOfType<String>(json, r'notesContact'),
        latitude: mapValueOfType<String>(json, r'latitude'),
        longitude: mapValueOfType<String>(json, r'longitude'),
        type: mapValueOfType<String>(json, r'type'),
        emergency: mapValueOfType<bool>(json, r'emergency'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        patientId: mapValueOfType<String>(json, r'patientId'),
        patientLastName: mapValueOfType<String>(json, r'patientLastName'),
        patientFirstName: mapValueOfType<String>(json, r'patientFirstName'),
        description: mapValueOfType<String>(json, r'description'),
        interventionCode: mapValueOfType<String>(json, r'interventionCode'),
      );
    }
    return null;
  }

  static List<FlowItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FlowItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FlowItemDto>[];

  static Map<String, FlowItemDto> mapFromJson(dynamic json) {
    final map = <String, FlowItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FlowItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FlowItemDto-objects as value to a dart map
  static Map<String, List<FlowItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FlowItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FlowItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

