// @dart=2.12

part of icure_dart_sdk.api;

class CodeIdsByTypeCodeVersionIntervalFilter extends AbstractFilterDto<CodeDto> {
  CodeIdsByTypeCodeVersionIntervalFilter({this.desc, this.startType, this.startCode, this.startVersion, this.endType, this.endCode, this.endVersion});

  @override
  String? desc;
  String? startType;
  String? startCode;
  String? startVersion;
  String? endType;
  String? endCode;
  String? endVersion;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (startType != null) {
      json[r'startType'] = startType;
    }
    if (startCode != null) {
      json[r'startCode'] = startCode;
    }
    if (startVersion != null) {
      json[r'startVersion'] = startVersion;
    }
    if (endType != null) {
      json[r'endType'] = endType;
    }
    if (endCode != null) {
      json[r'endCode'] = endCode;
    }
    if (endVersion != null) {
      json[r'endVersion'] = endVersion;
    }
    return json;
  }

}
