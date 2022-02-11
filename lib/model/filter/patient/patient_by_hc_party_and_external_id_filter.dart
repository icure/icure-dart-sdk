// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyAndExternalIdFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndExternalIdFilter({this.desc, this.externalId, this.healthcarePartyId});

  @override
  String? desc;
  String? externalId;
  String? healthcarePartyId;
}
