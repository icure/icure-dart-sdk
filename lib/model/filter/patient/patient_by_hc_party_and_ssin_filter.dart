// @dart=2.12
part of openapi.api;


class PatientByHcPartyAndSsinFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        String? ssin;
        String? healthcarePartyId;
}
