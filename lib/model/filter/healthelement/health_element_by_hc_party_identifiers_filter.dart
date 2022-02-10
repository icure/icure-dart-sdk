// @dart=2.12

part of openapi.api;


class HealthElementByHcPartyIdentifiersFilter extends AbstractFilterDto<HealthElementDto> {
  @override String? desc;
  String? healthcarePartyId;
  List<IdentifierDto> identifiers = [];
}
