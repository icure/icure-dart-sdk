// @dart=2.12
part of icure_dart_sdk.api;

class PatientByIdsFilter extends AbstractFilterDto<PatientDto> {
  @override
  String? desc;
  List<String> ids = [];
}
