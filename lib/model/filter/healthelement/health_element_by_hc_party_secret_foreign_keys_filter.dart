// @dart=2.12
part of icure_dart_sdk.api;

class HealthElementByHcPartySecretForeignKeysFilter extends AbstractFilterDto<HealthElementDto> {
  HealthElementByHcPartySecretForeignKeysFilter({this.desc, this.healthcarePartyId, this.patientSecretForeignKeys = const {}});

  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      regExp.firstMatch(type);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    json[r'patientSecretForeignKeys'] = patientSecretForeignKeys.toList();

    return json;
  }

}
