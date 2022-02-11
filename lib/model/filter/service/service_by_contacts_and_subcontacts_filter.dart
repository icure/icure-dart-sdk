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
}
