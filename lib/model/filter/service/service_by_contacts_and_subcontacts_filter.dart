// @dart=2.12
part of openapi.api;


class ServiceByContactsAndSubcontactsFilter extends AbstractFilterDto<ServiceDto> {
        @override String? desc;
        String? healthcarePartyId;
        Set<String> contacts = {};
        Set<String>? subContacts;
        int? startValueDate;
        int? endValueDate;
}
