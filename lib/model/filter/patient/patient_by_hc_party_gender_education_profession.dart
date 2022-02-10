// @dart=2.12
part of openapi.api;


class PatientByHcPartyGenderEducationProfession extends AbstractFilterDto<PatientDto> {
        @override String? desc;
        String? healthcarePartyId;
        PatientDtoGenderEnum? gender;
        String? education;
        String? profession;
}
