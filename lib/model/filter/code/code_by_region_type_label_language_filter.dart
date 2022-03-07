// @dart=2.12

part of icure_dart_sdk.api;

class CodeByRegionTypeLabelLanguageFilter extends AbstractFilterDto<CodeDto> {
  CodeByRegionTypeLabelLanguageFilter({this.desc, this.region, this.type, this.language, this.label});

  @override
  String? desc;
  String? region;
  String? type;
  String? language;
  String? label;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      regExp.firstMatch(type);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (region != null) {
      json[r'region'] = region;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    return json;
  }

}
