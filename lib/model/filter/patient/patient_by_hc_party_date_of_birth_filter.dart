// @dart=2.12
part of openapi.api;

class PatientByHcPartyDateOfBirthFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        int? dateOfBirth;
        String? healthcarePartyId;
}
