// @dart=2.12

part of icure_dart_sdk.api;

class HealthElementByHcPartyIdentifiersFilter extends AbstractFilterDto<HealthElementDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  List<IdentifierDto> identifiers = [];
}
