// @dart=2.12

part of icure_dart_sdk.api;

class HealthElementByHcPartyIdentifiersFilter extends AbstractFilterDto<HealthElementDto> {
  HealthElementByHcPartyIdentifiersFilter({this.desc, this.hcPartyId, this.identifiers = const []});

  @override
  String? desc;
  String? hcPartyId;
  List<IdentifierDto> identifiers = [];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (hcPartyId != null) {
      json[r'hcPartyId'] = hcPartyId;
    }
    json[r'identifiers'] = identifiers;

    return json;
  }
}
