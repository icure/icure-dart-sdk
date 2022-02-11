// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyNameContainsFuzzyFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyNameContainsFuzzyFilter({this.desc, this.searchString, this.healthcarePartyId});

  @override String? desc;
  String? searchString;
  String? healthcarePartyId;

}
