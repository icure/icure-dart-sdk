// @dart=2.12
part of icure_dart_sdk.api;

class HealthElementByHcPartySecretForeignKeysFilter extends AbstractFilterDto<HealthElementDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};
}
