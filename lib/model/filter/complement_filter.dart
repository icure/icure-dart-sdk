// @dart=2.12

part of icure_dart_sdk.api;

class ComplementFilter<O> extends AbstractFilterDto<O> {
  ComplementFilter({this.desc, this.superSet, this.subSet});

  @override
  String? desc;
  AbstractFilterDto<O>? superSet;
  AbstractFilterDto<O>? subSet;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (superSet != null) {
      json[r'superSet'] = superSet;
    }
    if (subSet != null) {
      json[r'subSet'] = subSet;
    }

    return json;
  }
}
