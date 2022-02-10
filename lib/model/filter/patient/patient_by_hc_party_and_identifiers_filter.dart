// @dart=2.12
part of openapi.api;


class PatientByHcPartyAndIdentifiersFilter extends AbstractFilterDto<PatientDto> {
    @override String? desc;
    String? healthcarePartyId;
    List<IdentifierDto> identifiers = [];
}
