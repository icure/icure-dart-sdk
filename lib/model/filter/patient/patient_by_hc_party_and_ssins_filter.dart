// @dart=2.12
part of openapi.api;



class PatientByHcPartyAndSsinsFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        List<String>? ssins;
        String? healthcarePartyId;
}
