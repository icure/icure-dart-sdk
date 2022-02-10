// @dart=2.12
part of openapi.api;

class HealthcarePartyByIdsFilter extends AbstractFilterDto<HealthcarePartyDto> {
  @override
  String? desc;
  Set<String> ids = {};
}
