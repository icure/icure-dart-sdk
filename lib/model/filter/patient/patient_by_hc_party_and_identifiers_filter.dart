// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyAndIdentifiersFilter extends AbstractFilterDto<PatientDto> {
  PatientByHcPartyAndIdentifiersFilter({this.desc, this.healthcarePartyId, this.identifiers = const []});

  @override
  String? desc;
  String? healthcarePartyId;
  List<IdentifierDto> identifiers = [];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    json[r'identifiers'] = identifiers;

    return json;
  }

}
