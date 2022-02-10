// @dart=2.12
part of openapi.api;

class PatientByHcPartyAndActiveFilter extends AbstractFilterDto<PatientDto> {
  @override
  String? desc;
  bool active = true;
  String? healthcarePartyId;
}
