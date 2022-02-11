// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyAndActiveFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndActiveFilter({this.desc, this.active = true, this.healthcarePartyId});

  @override
  String? desc;
  bool active = true;
  String? healthcarePartyId;
}
