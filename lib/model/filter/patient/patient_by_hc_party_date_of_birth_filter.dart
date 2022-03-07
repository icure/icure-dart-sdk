// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyDateOfBirthFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyDateOfBirthFilter({this.desc, this.dateOfBirth, this.healthcarePartyId});

  @override
  String? desc;
  int? dateOfBirth;
  String? healthcarePartyId;

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
    if (dateOfBirth != null) {
      json[r'dateOfBirth'] = dateOfBirth;
    }

    return json;
  }


}
