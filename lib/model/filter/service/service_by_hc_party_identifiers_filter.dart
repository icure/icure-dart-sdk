// @dart=2.12
part of icure_dart_sdk.api;


class ServiceByHcPartyIdentifiersFilter extends AbstractFilterDto<ServiceDto> {
  @override String? desc;
  String? healthcarePartyId;
  List<IdentifierDto> identifiers = [];
}
