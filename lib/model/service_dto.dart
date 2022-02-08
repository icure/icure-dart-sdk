//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServiceDto {
  /// Returns a new [ServiceDto] instance.
  ServiceDto({
    @required this.id,
    this.transactionId,
    this.identifier = const [],
    this.contactId,
    this.subContactIds = const {},
    this.plansOfActionIds = const {},
    this.healthElementsIds = const {},
    this.formIds = const {},
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.label,
    this.index,
    this.content = const {},
    this.encryptedContent,
    this.textIndexes = const {},
    this.valueDate,
    this.openingDate,
    this.closingDate,
    this.formId,
    this.created,
    this.modified,
    this.endOfLife,
    this.author,
    this.responsible,
    this.medicalLocationId,
    this.comment,
    this.status,
    this.invoicingCodes = const {},
    this.notes = const [],
    this.qualifiedLinks = const {},
    this.codes = const {},
    this.tags = const {},
    this.encryptedSelf,
  });

  /// The Id of the Service. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// The transactionId is used when a single service had to be split into parts for technical reasons. Several services with the same non null transaction id form one single service
  String transactionId;

  List<IdentifierDto> identifier;

  /// Id of the contact during which the service is provided
  String contactId;

  /// List of IDs of all sub-contacts that link the service to structural elements. Only used when the Service is emitted outside of its contact
  Set<String> subContactIds;

  /// List of IDs of all plans of actions (healthcare approaches) as a part of which the Service is provided. Only used when the Service is emitted outside of its contact
  Set<String> plansOfActionIds;

  /// List of IDs of all healthcare elements for which the service is provided. Only used when the Service is emitted outside of its contact
  Set<String> healthElementsIds;

  /// List of Ids of all forms linked to the Service. Only used when the Service is emitted outside of its contact.
  Set<String> formIds;

  /// The secret patient key, encrypted in the patient document, in clear here.
  Set<String> secretForeignKeys;

  /// The public patient key, encrypted here for separate Crypto Actors.
  Map<String, Set<DelegationDto>> cryptedForeignKeys;

  /// The delegations giving access to connected healthcare information.
  Map<String, Set<DelegationDto>> delegations;

  /// The contact secret encryption key used to encrypt the secured properties (like services for example), encrypted for separate Crypto Actors.
  Map<String, Set<DelegationDto>> encryptionKeys;

  /// Description / Unambiguous qualification (LOINC code) of the type of information contained in the service. Could be a code to qualify temperature, complaint, diagnostic, ...
  String label;

  /// Used for sorting services inside an upper object (A contact, a transaction, a FHIR bundle, ...)
  int index;

  /// Information contained in the service. Content is localized, using ISO language code as key
  Map<String, ContentDto> content;

  String encryptedContent;

  Map<String, String> textIndexes;

  /// The date (YYYYMMDDhhmmss) when the Service is noted to have started and also closes on the same date
  int valueDate;

  /// The date (YYYYMMDDhhmmss) of the start of the Service
  int openingDate;

  /// The date (YYYYMMDDhhmmss) marking the end of the Service
  int closingDate;

  /// Id of the form used during the Service
  String formId;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  int created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  int modified;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  int endOfLife;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  String author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  String responsible;

  /// The id of the medical location where this entity was created.
  String medicalLocationId;

  /// Text, comments on the Service provided
  String comment;

  int status;

  /// List of invoicing codes
  Set<String> invoicingCodes;

  /// Comments - Notes recorded by a HCP about this service
  List<AnnotationDto> notes;

  /// Links towards related services (possibly in other contacts)
  Map<String, Map<String, String>> qualifiedLinks;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceDto &&
     other.id == id &&
     other.transactionId == transactionId &&
     other.identifier == identifier &&
     other.contactId == contactId &&
     other.subContactIds == subContactIds &&
     other.plansOfActionIds == plansOfActionIds &&
     other.healthElementsIds == healthElementsIds &&
     other.formIds == formIds &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.label == label &&
     other.index == index &&
     other.content == content &&
     other.encryptedContent == encryptedContent &&
     other.textIndexes == textIndexes &&
     other.valueDate == valueDate &&
     other.openingDate == openingDate &&
     other.closingDate == closingDate &&
     other.formId == formId &&
     other.created == created &&
     other.modified == modified &&
     other.endOfLife == endOfLife &&
     other.author == author &&
     other.responsible == responsible &&
     other.medicalLocationId == medicalLocationId &&
     other.comment == comment &&
     other.status == status &&
     other.invoicingCodes == invoicingCodes &&
     other.notes == notes &&
     other.qualifiedLinks == qualifiedLinks &&
     other.codes == codes &&
     other.tags == tags &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (transactionId == null ? 0 : transactionId.hashCode) +
    (identifier == null ? 0 : identifier.hashCode) +
    (contactId == null ? 0 : contactId.hashCode) +
    (subContactIds == null ? 0 : subContactIds.hashCode) +
    (plansOfActionIds == null ? 0 : plansOfActionIds.hashCode) +
    (healthElementsIds == null ? 0 : healthElementsIds.hashCode) +
    (formIds == null ? 0 : formIds.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (index == null ? 0 : index.hashCode) +
    (content == null ? 0 : content.hashCode) +
    (encryptedContent == null ? 0 : encryptedContent.hashCode) +
    (textIndexes == null ? 0 : textIndexes.hashCode) +
    (valueDate == null ? 0 : valueDate.hashCode) +
    (openingDate == null ? 0 : openingDate.hashCode) +
    (closingDate == null ? 0 : closingDate.hashCode) +
    (formId == null ? 0 : formId.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (endOfLife == null ? 0 : endOfLife.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (invoicingCodes == null ? 0 : invoicingCodes.hashCode) +
    (notes == null ? 0 : notes.hashCode) +
    (qualifiedLinks == null ? 0 : qualifiedLinks.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'ServiceDto[id=$id, transactionId=$transactionId, identifier=$identifier, contactId=$contactId, subContactIds=$subContactIds, plansOfActionIds=$plansOfActionIds, healthElementsIds=$healthElementsIds, formIds=$formIds, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, label=$label, index=$index, content=$content, encryptedContent=$encryptedContent, textIndexes=$textIndexes, valueDate=$valueDate, openingDate=$openingDate, closingDate=$closingDate, formId=$formId, created=$created, modified=$modified, endOfLife=$endOfLife, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, comment=$comment, status=$status, invoicingCodes=$invoicingCodes, notes=$notes, qualifiedLinks=$qualifiedLinks, codes=$codes, tags=$tags, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (transactionId != null) {
      json[r'transactionId'] = transactionId;
    }
      json[r'identifier'] = identifier;
    if (contactId != null) {
      json[r'contactId'] = contactId;
    }
    if (subContactIds != null) {
      json[r'subContactIds'] = subContactIds;
    }
    if (plansOfActionIds != null) {
      json[r'plansOfActionIds'] = plansOfActionIds;
    }
    if (healthElementsIds != null) {
      json[r'healthElementsIds'] = healthElementsIds;
    }
    if (formIds != null) {
      json[r'formIds'] = formIds;
    }
    if (secretForeignKeys != null) {
      json[r'secretForeignKeys'] = secretForeignKeys;
    }
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (label != null) {
      json[r'label'] = label;
    }
    if (index != null) {
      json[r'index'] = index;
    }
      json[r'content'] = content;
    if (encryptedContent != null) {
      json[r'encryptedContent'] = encryptedContent;
    }
      json[r'textIndexes'] = textIndexes;
    if (valueDate != null) {
      json[r'valueDate'] = valueDate;
    }
    if (openingDate != null) {
      json[r'openingDate'] = openingDate;
    }
    if (closingDate != null) {
      json[r'closingDate'] = closingDate;
    }
    if (formId != null) {
      json[r'formId'] = formId;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
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
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (status != null) {
      json[r'status'] = status;
    }
      json[r'invoicingCodes'] = invoicingCodes;
      json[r'notes'] = notes;
      json[r'qualifiedLinks'] = qualifiedLinks;
      json[r'codes'] = codes;
      json[r'tags'] = tags;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [ServiceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ServiceDto(
        id: mapValueOfType<String>(json, r'id'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        identifier: IdentifierDto.listFromJson(json[r'identifier']),
        contactId: mapValueOfType<String>(json, r'contactId'),
        subContactIds: json[r'subContactIds'] is Set
          ? (json[r'subContactIds'] as Set).cast<String>()
          : null,
        plansOfActionIds: json[r'plansOfActionIds'] is Set
          ? (json[r'plansOfActionIds'] as Set).cast<String>()
          : null,
        healthElementsIds: json[r'healthElementsIds'] is Set
          ? (json[r'healthElementsIds'] as Set).cast<String>()
          : null,
        formIds: json[r'formIds'] is Set
          ? (json[r'formIds'] as Set).cast<String>()
          : null,
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
        label: mapValueOfType<String>(json, r'label'),
        index: mapValueOfType<int>(json, r'index'),
        content: mapValueOfType<Map<String, ContentDto>>(json, r'content'),
        encryptedContent: mapValueOfType<String>(json, r'encryptedContent'),
        textIndexes: mapCastOfType<String, String>(json, r'textIndexes'),
        valueDate: mapValueOfType<int>(json, r'valueDate'),
        openingDate: mapValueOfType<int>(json, r'openingDate'),
        closingDate: mapValueOfType<int>(json, r'closingDate'),
        formId: mapValueOfType<String>(json, r'formId'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        comment: mapValueOfType<String>(json, r'comment'),
        status: mapValueOfType<int>(json, r'status'),
        invoicingCodes: json[r'invoicingCodes'] is Set
          ? (json[r'invoicingCodes'] as Set).cast<String>()
          : null,
        notes: AnnotationDto.listFromJson(json[r'notes']),
        qualifiedLinks: mapCastOfType<String, dynamic>(json, r'qualifiedLinks'),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        tags: CodeStubDto.listFromJson(json[r'tags']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<ServiceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ServiceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ServiceDto>[];

  static Map<String, ServiceDto> mapFromJson(dynamic json) {
    final map = <String, ServiceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ServiceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceDto-objects as value to a dart map
  static Map<String, List<ServiceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ServiceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ServiceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

