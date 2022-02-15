// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyAndSsinFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndSsinFilter({this.desc, this.ssin, this.healthcarePartyId});

  @override String? desc;
  String? ssin;
  String? healthcarePartyId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }

    return json;
  }

}
