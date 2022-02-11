// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyDateOfBirthFilter extends AbstractFilterDto<PatientDto> {
  @override
  String? desc;
  int? dateOfBirth;
  String? healthcarePartyId;
}
