//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalendarItemDto {
  /// Returns a new [CalendarItemDto] instance.
  CalendarItemDto({
    @required this.id,
    this.rev,
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.medicalLocationId,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.deletionDate,
    @required this.title,
    this.calendarItemTypeId,
    this.masterCalendarItemId,
    this.patientId,
    this.important,
    this.homeVisit,
    this.phoneNumber,
    this.placeId,
    this.address,
    this.addressText,
    this.startTime,
    this.endTime,
    this.confirmationTime,
    this.confirmationId,
    this.duration,
    this.allDay,
    this.details,
    this.wasMigrated,
    this.agendaId,
    this.recurrenceId,
    this.meetingTags = const {},
    this.flowItem,
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  String id;

  String rev;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  int created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  int modified;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  String author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  String responsible;

  /// The id of the medical location where this entity was created.
  String medicalLocationId;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  int endOfLife;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String title;

  String calendarItemTypeId;

  String masterCalendarItemId;

  String patientId;

  bool important;

  bool homeVisit;

  String phoneNumber;

  String placeId;

  AddressDto address;

  String addressText;

  int startTime;

  int endTime;

  int confirmationTime;

  String confirmationId;

  int duration;

  bool allDay;

  String details;

  bool wasMigrated;

  String agendaId;

  String recurrenceId;

  Set<CalendarItemTagDto> meetingTags;

  FlowItemDto flowItem;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
  Set<String> secretForeignKeys;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
  Map<String, Set<DelegationDto>> cryptedForeignKeys;

  /// When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
  Map<String, Set<DelegationDto>> delegations;

  /// When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
  Map<String, Set<DelegationDto>> encryptionKeys;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarItemDto &&
     other.id == id &&
     other.rev == rev &&
     other.created == created &&
     other.modified == modified &&
     other.author == author &&
     other.responsible == responsible &&
     other.medicalLocationId == medicalLocationId &&
     other.tags == tags &&
     other.codes == codes &&
     other.endOfLife == endOfLife &&
     other.deletionDate == deletionDate &&
     other.title == title &&
     other.calendarItemTypeId == calendarItemTypeId &&
     other.masterCalendarItemId == masterCalendarItemId &&
     other.patientId == patientId &&
     other.important == important &&
     other.homeVisit == homeVisit &&
     other.phoneNumber == phoneNumber &&
     other.placeId == placeId &&
     other.address == address &&
     other.addressText == addressText &&
     other.startTime == startTime &&
     other.endTime == endTime &&
     other.confirmationTime == confirmationTime &&
     other.confirmationId == confirmationId &&
     other.duration == duration &&
     other.allDay == allDay &&
     other.details == details &&
     other.wasMigrated == wasMigrated &&
     other.agendaId == agendaId &&
     other.recurrenceId == recurrenceId &&
     other.meetingTags == meetingTags &&
     other.flowItem == flowItem &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (endOfLife == null ? 0 : endOfLife.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (calendarItemTypeId == null ? 0 : calendarItemTypeId.hashCode) +
    (masterCalendarItemId == null ? 0 : masterCalendarItemId.hashCode) +
    (patientId == null ? 0 : patientId.hashCode) +
    (important == null ? 0 : important.hashCode) +
    (homeVisit == null ? 0 : homeVisit.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (placeId == null ? 0 : placeId.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (addressText == null ? 0 : addressText.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (endTime == null ? 0 : endTime.hashCode) +
    (confirmationTime == null ? 0 : confirmationTime.hashCode) +
    (confirmationId == null ? 0 : confirmationId.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (allDay == null ? 0 : allDay.hashCode) +
    (details == null ? 0 : details.hashCode) +
    (wasMigrated == null ? 0 : wasMigrated.hashCode) +
    (agendaId == null ? 0 : agendaId.hashCode) +
    (recurrenceId == null ? 0 : recurrenceId.hashCode) +
    (meetingTags == null ? 0 : meetingTags.hashCode) +
    (flowItem == null ? 0 : flowItem.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'CalendarItemDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, title=$title, calendarItemTypeId=$calendarItemTypeId, masterCalendarItemId=$masterCalendarItemId, patientId=$patientId, important=$important, homeVisit=$homeVisit, phoneNumber=$phoneNumber, placeId=$placeId, address=$address, addressText=$addressText, startTime=$startTime, endTime=$endTime, confirmationTime=$confirmationTime, confirmationId=$confirmationId, duration=$duration, allDay=$allDay, details=$details, wasMigrated=$wasMigrated, agendaId=$agendaId, recurrenceId=$recurrenceId, meetingTags=$meetingTags, flowItem=$flowItem, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    if (medicalLocationId != null) {
      json[r'medicalLocationId'] = medicalLocationId;
    }
      json[r'tags'] = tags;
      json[r'codes'] = codes;
    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
      json[r'title'] = title;
    if (calendarItemTypeId != null) {
      json[r'calendarItemTypeId'] = calendarItemTypeId;
    }
    if (masterCalendarItemId != null) {
      json[r'masterCalendarItemId'] = masterCalendarItemId;
    }
    if (patientId != null) {
      json[r'patientId'] = patientId;
    }
    if (important != null) {
      json[r'important'] = important;
    }
    if (homeVisit != null) {
      json[r'homeVisit'] = homeVisit;
    }
    if (phoneNumber != null) {
      json[r'phoneNumber'] = phoneNumber;
    }
    if (placeId != null) {
      json[r'placeId'] = placeId;
    }
    if (address != null) {
      json[r'address'] = address;
    }
    if (addressText != null) {
      json[r'addressText'] = addressText;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime;
    }
    if (endTime != null) {
      json[r'endTime'] = endTime;
    }
    if (confirmationTime != null) {
      json[r'confirmationTime'] = confirmationTime;
    }
    if (confirmationId != null) {
      json[r'confirmationId'] = confirmationId;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (allDay != null) {
      json[r'allDay'] = allDay;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    if (wasMigrated != null) {
      json[r'wasMigrated'] = wasMigrated;
    }
    if (agendaId != null) {
      json[r'agendaId'] = agendaId;
    }
    if (recurrenceId != null) {
      json[r'recurrenceId'] = recurrenceId;
    }
      json[r'meetingTags'] = meetingTags;
    if (flowItem != null) {
      json[r'flowItem'] = flowItem;
    }
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [CalendarItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CalendarItemDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        tags: CodeStubDto.listFromJson(json[r'tags']),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        title: mapValueOfType<String>(json, r'title'),
        calendarItemTypeId: mapValueOfType<String>(json, r'calendarItemTypeId'),
        masterCalendarItemId: mapValueOfType<String>(json, r'masterCalendarItemId'),
        patientId: mapValueOfType<String>(json, r'patientId'),
        important: mapValueOfType<bool>(json, r'important'),
        homeVisit: mapValueOfType<bool>(json, r'homeVisit'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        placeId: mapValueOfType<String>(json, r'placeId'),
        address: AddressDto.fromJson(json[r'address']),
        addressText: mapValueOfType<String>(json, r'addressText'),
        startTime: mapValueOfType<int>(json, r'startTime'),
        endTime: mapValueOfType<int>(json, r'endTime'),
        confirmationTime: mapValueOfType<int>(json, r'confirmationTime'),
        confirmationId: mapValueOfType<String>(json, r'confirmationId'),
        duration: mapValueOfType<int>(json, r'duration'),
        allDay: mapValueOfType<bool>(json, r'allDay'),
        details: mapValueOfType<String>(json, r'details'),
        wasMigrated: mapValueOfType<bool>(json, r'wasMigrated'),
        agendaId: mapValueOfType<String>(json, r'agendaId'),
        recurrenceId: mapValueOfType<String>(json, r'recurrenceId'),
        meetingTags: CalendarItemTagDto.listFromJson(json[r'meetingTags']).toSet(),
        flowItem: FlowItemDto.fromJson(json[r'flowItem']),
        secretForeignKeys: json[r'secretForeignKeys'] is Set
          ? (json[r'secretForeignKeys'] as Set).cast<String>()
          : null,
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<CalendarItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CalendarItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CalendarItemDto>[];

  static Map<String, CalendarItemDto> mapFromJson(dynamic json) {
    final map = <String, CalendarItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CalendarItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CalendarItemDto-objects as value to a dart map
  static Map<String, List<CalendarItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CalendarItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CalendarItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

