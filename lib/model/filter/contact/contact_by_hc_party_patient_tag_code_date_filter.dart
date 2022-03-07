// @dart=2.12
part of icure_dart_sdk.api;

class ContactByHcPartyPatientTagCodeDateFilter extends AbstractFilterDto<ContactDto> {
  ContactByHcPartyPatientTagCodeDateFilter({this.desc, this.healthcarePartyId, this.patientSecretForeignKey, this.patientSecretForeignKeys,
    this.tagType, this.tagCode, this.codeType, this.codeCode, this.startServiceValueDate, this.endServiceValueDate});

  @override
  String? desc;
  String? healthcarePartyId;
  String? patientSecretForeignKey;
  List<String>? patientSecretForeignKeys;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startServiceValueDate;
  int? endServiceValueDate;

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
    if (patientSecretForeignKey != null) {
      json[r'patientSecretForeignKey'] = patientSecretForeignKey;
    }
    if (tagType != null) {
      json[r'tagType'] = tagType;
    }
    if (tagCode != null) {
      json[r'tagCode'] = tagCode;
    }
    if (codeType != null) {
      json[r'codeType'] = codeType;
    }
    if (codeCode != null) {
      json[r'codeCode'] = codeCode;
    }

    return json;
  }

}
