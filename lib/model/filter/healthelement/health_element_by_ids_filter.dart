// @dart=2.12

part of openapi.api;

class HealthElementByIdsFilter extends AbstractFilterDto<HealthElementDto> {
        @override String? desc;
        Set<String> ids = {};
}

