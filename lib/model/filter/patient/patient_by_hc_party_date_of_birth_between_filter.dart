// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyDateOfBirthBetweenFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        int? minDateOfBirth;
        int? maxDateOfBirth;
        String? healthcarePartyId;
}
