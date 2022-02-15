// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByHcPartyTagCodeDateFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByHcPartyTagCodeDateFilter({
    this.desc,
    this.healthcarePartyId,
    this.patientSecretForeignKey,
    this.tagType,
    this.tagCode,
    this.codeType,
    this.codeCode,
    this.startValueDate,
    this.endValueDate
  });

  @override
  String? desc;
  String? healthcarePartyId;
  String? patientSecretForeignKey;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startValueDate;
  int? endValueDate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
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
