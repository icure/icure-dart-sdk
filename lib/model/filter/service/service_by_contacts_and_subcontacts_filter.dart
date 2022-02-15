// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByContactsAndSubcontactsFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByContactsAndSubcontactsFilter({
    this.desc,
    this.healthcarePartyId,
    this.contacts = const {},
    this.subContacts,
    this.startValueDate,
    this.endValueDate
  });

  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> contacts = {};
  Set<String>? subContacts;
  int? startValueDate;
  int? endValueDate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    json[r'contacts'] = contacts.toList();
    if (subContacts != null) {
      json[r'subContacts'] = subContacts;
    }
    if (startValueDate != null) {
      json[r'startValueDate'] = startValueDate;
    }
    if (endValueDate != null) {
      json[r'endValueDate'] = endValueDate;
    }

    return json;
  }


}
