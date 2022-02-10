// @dart=2.12
part of openapi.api;


class PatientByHcPartyDateOfBirthBetweenFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        int? minDateOfBirth;
        int? maxDateOfBirth;
        String? healthcarePartyId;
}
