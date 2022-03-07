// @dart=2.12

part of icure_dart_sdk.api;

class AllCodesFilter extends AbstractFilterDto<CodeDto> {
  AllCodesFilter({this.desc});

  @override
  String? desc;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    return json;
  }

}
