// @dart=2.12
part of icure_dart_sdk.api;

class HealthcarePartyByIdsFilter extends AbstractFilterDto<HealthcarePartyDto> {
  HealthcarePartyByIdsFilter({this.desc, this.ids = const {}});

  @override
  String? desc;
  Set<String> ids = {};
}
