// @dart=2.12
part of icure_dart_sdk.api;

class UsersByPatientIdFilter extends AbstractFilterDto<UserDto> {
  UsersByPatientIdFilter(this.patientId, {this.desc});

  @override
  String? desc;
  String patientId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    json[r'patientId'] = patientId;

    return json;
  }
}
