// @dart=2.12
part of openapi.api;


class PatientByHcPartyAndExternalIdFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        String? externalId;
        String? healthcarePartyId;
}
