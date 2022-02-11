// @dart=2.12

part of icure_dart_sdk.api;

class PatientByHcPartyNameFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyNameFilter({this.desc, this.name, this.healthcarePartyId});

  @override
  String? desc;
  String? name;
  String? healthcarePartyId;

}
