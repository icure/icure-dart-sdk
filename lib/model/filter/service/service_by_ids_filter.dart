// @dart=2.12
part of openapi.api;

class ServiceByIdsFilter extends AbstractFilterDto<ServiceDto> {
        @override String? desc;
        Set<String> ids = <String>{};
}
