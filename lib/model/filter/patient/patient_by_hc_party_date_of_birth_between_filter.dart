// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyDateOfBirthBetweenFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyDateOfBirthBetweenFilter({this.desc, this.minDateOfBirth, this.maxDateOfBirth, this.healthcarePartyId});

  @override String? desc;
  int? minDateOfBirth;
  int? maxDateOfBirth;
  String? healthcarePartyId;
}
