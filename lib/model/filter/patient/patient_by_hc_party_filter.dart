// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyFilter({this.desc, this.healthcarePartyId});

  @override String? desc;
  String? healthcarePartyId;
}
