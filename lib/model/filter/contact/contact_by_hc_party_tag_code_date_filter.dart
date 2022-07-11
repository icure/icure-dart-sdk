// @dart=2.12
part of icure_dart_sdk.api;

class ContactByHcPartyTagCodeDateFilter extends AbstractFilterDto<ContactDto> {
  ContactByHcPartyTagCodeDateFilter(
      {this.desc,
      this.healthcarePartyId,
      this.tagType,
      this.tagCode,
      this.codeType,
      this.codeCode,
      this.startOfContactOpeningDate,
      this.endOfContactOpeningDate});

  @override
  String? desc;
  String? healthcarePartyId;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startOfContactOpeningDate;
  int? endOfContactOpeningDate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
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
    if (startOfContactOpeningDate != null) {
      json[r'startOfContactOpeningDate'] = startOfContactOpeningDate;
    }
    if (endOfContactOpeningDate != null) {
      json[r'endOfContactOpeningDate'] = endOfContactOpeningDate;
    }
    return json;
  }
}
