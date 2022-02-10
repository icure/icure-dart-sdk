// @dart=2.12
part of openapi.api;


class PatientByIdsFilter extends AbstractFilterDto<PatientDto> {
         @override String? desc;
        List<String> ids = [];
}
