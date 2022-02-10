// @dart=2.12
part of openapi.api;


class ServiceByHcPartyIdentifiersFilter extends AbstractFilterDto<ServiceDto> {
        @override String? desc;
        String? healthcarePartyId;
        List<IdentifierDto> identifiers = [];
}
