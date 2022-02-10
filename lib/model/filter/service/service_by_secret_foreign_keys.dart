// @dart=2.12
part of openapi.api;


class ServiceBySecretForeignKeys extends AbstractFilterDto<ServiceDto> {
  @override String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};
}
