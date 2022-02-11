// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyGenderEducationProfession extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyGenderEducationProfession({this.desc, this.healthcarePartyId, this.gender, this.education, this.profession});

  @override
  String? desc;
  String? healthcarePartyId;
  PatientDtoGenderEnum? gender;
  String? education;
  String? profession;

}
