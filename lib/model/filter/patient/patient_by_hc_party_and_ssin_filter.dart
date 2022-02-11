// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyAndSsinFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndSsinFilter({this.desc, this.ssin, this.healthcarePartyId});

  @override String? desc;
  String? ssin;
  String? healthcarePartyId;
}
