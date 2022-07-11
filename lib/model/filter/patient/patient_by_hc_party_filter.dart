// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyFilter({this.desc, this.healthcarePartyId});

  @override
  String? desc;
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

    return json;
  }
}
