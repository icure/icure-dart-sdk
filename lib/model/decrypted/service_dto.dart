//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DecryptedServiceDto {
  /// Returns a new [DecryptedServiceDto] instance.
  DecryptedServiceDto({
    required this.id,
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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  List<IdentifierDto> identifier;

  /// Id of the contact during which the service is provided
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactId;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Used for sorting services inside an upper object (A contact, a transaction, a FHIR bundle, ...)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  /// Information contained in the service. Content is localized, using ISO language code as key
  Map<String, DecryptedContentDto> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedContent;

  Map<String, String> textIndexes;

  /// The date (YYYYMMDDhhmmss) when the Service is noted to have started and also closes on the same date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? valueDate;

  /// The date (YYYYMMDDhhmmss) of the start of the Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingDate;

  /// The date (YYYYMMDDhhmmss) marking the end of the Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingDate;

  /// Id of the form used during the Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formId;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfLife;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsible;

  /// The id of the medical location where this entity was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? medicalLocationId;

  /// Text, comments on the Service provided
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is DecryptedServiceDto &&
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
  (id.hashCode) +
      (transactionId == null ? 0 : transactionId!.hashCode) +
      (identifier.hashCode) +
      (contactId == null ? 0 : contactId!.hashCode) +
      (subContactIds.hashCode) +
      (plansOfActionIds.hashCode) +
      (healthElementsIds.hashCode) +
      (formIds.hashCode) +
      (secretForeignKeys.hashCode) +
      (cryptedForeignKeys.hashCode) +
      (delegations.hashCode) +
      (encryptionKeys.hashCode) +
      (label == null ? 0 : label!.hashCode) +
      (index == null ? 0 : index!.hashCode) +
      (content.hashCode) +
      (encryptedContent == null ? 0 : encryptedContent!.hashCode) +
      (textIndexes.hashCode) +
      (valueDate == null ? 0 : valueDate!.hashCode) +
      (openingDate == null ? 0 : openingDate!.hashCode) +
      (closingDate == null ? 0 : closingDate!.hashCode) +
      (formId == null ? 0 : formId!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (medicalLocationId == null ? 0 : medicalLocationId!.hashCode) +
      (comment == null ? 0 : comment!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (invoicingCodes.hashCode) +
      (notes.hashCode) +
      (qualifiedLinks.hashCode) +
      (codes.hashCode) +
      (tags.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'DecryptedServiceDto[id=$id, transactionId=$transactionId, identifier=$identifier, contactId=$contactId, subContactIds=$subContactIds, plansOfActionIds=$plansOfActionIds, healthElementsIds=$healthElementsIds, formIds=$formIds, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, label=$label, index=$index, content=$content, encryptedContent=$encryptedContent, textIndexes=$textIndexes, valueDate=$valueDate, openingDate=$openingDate, closingDate=$closingDate, formId=$formId, created=$created, modified=$modified, endOfLife=$endOfLife, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, comment=$comment, status=$status, invoicingCodes=$invoicingCodes, notes=$notes, qualifiedLinks=$qualifiedLinks, codes=$codes, tags=$tags, encryptedSelf=$encryptedSelf]';

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
    json[r'subContactIds'] = subContactIds;
    json[r'plansOfActionIds'] = plansOfActionIds;
    json[r'healthElementsIds'] = healthElementsIds;
    json[r'formIds'] = formIds;
    json[r'secretForeignKeys'] = secretForeignKeys;
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

  /// Returns a new [DecryptedServiceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedServiceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
          'Required key "DecryptedServiceDto[$key]" is missing from JSON.');
          assert(json[key] != null,
          'Required key "DecryptedServiceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptedServiceDto(
        id: mapValueOfType<String>(json, r'id')!,
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        identifier: IdentifierDto.listFromJson(json[r'identifier'])!,
        contactId: mapValueOfType<String>(json, r'contactId'),
        subContactIds: json[r'subContactIds'] is Set
            ? (json[r'subContactIds'] as Set).cast<String>()
            : const {},
        plansOfActionIds: json[r'plansOfActionIds'] is Set
            ? (json[r'plansOfActionIds'] as Set).cast<String>()
            : const {},
        healthElementsIds: json[r'healthElementsIds'] is Set
            ? (json[r'healthElementsIds'] as Set).cast<String>()
            : const {},
        formIds: json[r'formIds'] is Set
            ? (json[r'formIds'] as Set).cast<String>()
            : const {},
        secretForeignKeys: json[r'secretForeignKeys'] is Set
            ? (json[r'secretForeignKeys'] as Set).cast<String>()
            : const {},
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null
            ? const {}
            : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null
            ? const {}
            : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null
            ? const {}
            : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        label: mapValueOfType<String>(json, r'label'),
        index: mapValueOfType<int>(json, r'index'),
        content: mapValueOfType<Map<String, DecryptedContentDto>>(json, r'content')!,
        encryptedContent: mapValueOfType<String>(json, r'encryptedContent'),
        textIndexes: mapCastOfType<String, String>(json, r'textIndexes')!,
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
            : const {},
        notes: AnnotationDto.listFromJson(json[r'notes'])!,
        qualifiedLinks: mapWithMapOfStringsFromJson(json[r'qualifiedLinks']),
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<DecryptedServiceDto>? listFromJson(dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedServiceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedServiceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptedServiceDto> mapFromJson(dynamic json) {
    final map = <String, DecryptedServiceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedServiceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptedServiceDto-objects as value to a dart map
  static Map<String, List<DecryptedServiceDto>> mapListFromJson(dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DecryptedServiceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedServiceDto.listFromJson(
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
    'identifier',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
    'content',
    'textIndexes',
    'invoicingCodes',
    'notes',
    'qualifiedLinks',
    'codes',
    'tags',
  };
}
