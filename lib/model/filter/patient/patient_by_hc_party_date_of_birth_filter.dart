// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyDateOfBirthFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyDateOfBirthFilter({this.desc, this.dateOfBirth, this.healthcarePartyId});

  @override
  String? desc;
  int? dateOfBirth;
  String? healthcarePartyId;

}
