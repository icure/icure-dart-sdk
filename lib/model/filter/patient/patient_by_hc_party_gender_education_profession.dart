// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyGenderEducationProfession extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyGenderEducationProfession({this.desc, this.healthcarePartyId, this.gender, this.education, this.profession});

  @override
  String? desc;
  String? healthcarePartyId;
  PatientDtoGenderEnum? gender;
  String? education;
  String? profession;


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
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (education != null) {
      json[r'education'] = education;
    }
    if (profession != null) {
      json[r'profession'] = profession;
    }

    return json;
  }


}
