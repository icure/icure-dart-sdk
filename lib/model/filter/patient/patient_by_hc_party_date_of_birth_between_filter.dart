// @dart=2.12
part of icure_dart_sdk.api;


class PatientByHcPartyDateOfBirthBetweenFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyDateOfBirthBetweenFilter({this.desc, this.minDateOfBirth, this.maxDateOfBirth, this.healthcarePartyId});

  @override String? desc;
  int? minDateOfBirth;
  int? maxDateOfBirth;
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
    if (minDateOfBirth != null) {
      json[r'minDateOfBirth'] = minDateOfBirth;
    }
    if (maxDateOfBirth != null) {
      json[r'maxDateOfBirth'] = maxDateOfBirth;
    }

    return json;
  }


}
