// @dart=2.12
part of icure_dart_sdk.api;

class PatientByHcPartyAndIdentifiersFilter extends AbstractFilterDto<PatientDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  List<IdentifierDto> identifiers = [];
}
