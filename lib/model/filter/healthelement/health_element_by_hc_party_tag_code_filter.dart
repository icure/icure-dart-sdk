// @dart=2.12

part of icure_dart_sdk.api;

class HealthElementByHcPartyTagCodeFilter extends AbstractFilterDto<HealthElementDto> {
  HealthElementByHcPartyTagCodeFilter({
    this.desc,
    this.healthcarePartyId,
    this.codeType,
    this.codeCode,
    this.tagType,
    this.tagCode,
    this.status
  });

  @override
  String? desc;
  String? healthcarePartyId;
  String? codeType;
  String? codeCode;
  String? tagType;
  String? tagCode;
  int? status;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
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
    if (status != null) {
      json[r'status'] = status;
    }

    return json;
  }

}
