// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyAndExternalIdFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndExternalIdFilter({this.desc, this.externalId, this.healthcarePartyId});

  @override
  String? desc;
  String? externalId;
  String? healthcarePartyId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }

    return json;
  }


}
