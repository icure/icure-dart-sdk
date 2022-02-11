// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyAndSsinFilter extends AbstractFilterDto<PatientDto> {
  @override String? desc;
  String? ssin;
  String? healthcarePartyId;
}
