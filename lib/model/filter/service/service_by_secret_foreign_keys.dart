// @dart=2.12
part of icure_dart_sdk.api;

class ServiceBySecretForeignKeys extends AbstractFilterDto<ServiceDto> {
  ServiceBySecretForeignKeys({this.desc, this.healthcarePartyId, this.patientSecretForeignKeys = const {}});

  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};
}
