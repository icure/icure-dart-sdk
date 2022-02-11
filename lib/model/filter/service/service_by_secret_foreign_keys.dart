// @dart=2.12
part of icure_dart_sdk.api;

class ServiceBySecretForeignKeys extends AbstractFilterDto<ServiceDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};
}
