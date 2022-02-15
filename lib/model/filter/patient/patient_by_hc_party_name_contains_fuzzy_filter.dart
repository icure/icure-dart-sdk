// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyNameContainsFuzzyFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyNameContainsFuzzyFilter({this.desc, this.searchString, this.healthcarePartyId});

  @override String? desc;
  String? searchString;
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
    if (searchString != null) {
      json[r'searchString'] = searchString;
    }

    return json;
  }


}
