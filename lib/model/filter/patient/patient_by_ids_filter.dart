// @dart=2.12
part of icure_dart_sdk.api;

class PatientByIdsFilter extends AbstractFilterDto<PatientDto> {
  PatientByIdsFilter({this.desc, this.ids = const []});

  @override
  String? desc;
  List<String> ids = [];

}
