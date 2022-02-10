// @dart=2.12
part of openapi.api;

class HealthElementByHcPartySecretForeignKeysFilter extends AbstractFilterDto<HealthElementDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};
}
