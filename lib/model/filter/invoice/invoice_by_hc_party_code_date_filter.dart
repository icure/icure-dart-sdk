// @dart=2.12
part of icure_dart_sdk.api;


class InvoiceByHcPartyCodeDateFilter extends AbstractFilterDto<InvoiceDto> {
  InvoiceByHcPartyCodeDateFilter({this.desc, this.healthcarePartyId, this.code, this.startInvoiceDate, this.endInvoiceDate});

  @override
  String? desc;
  String? healthcarePartyId;
  String? code;
  int? startInvoiceDate;
  int? endInvoiceDate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (startInvoiceDate != null) {
      json[r'startInvoiceDate'] = startInvoiceDate;
    }
    if (endInvoiceDate != null) {
      json[r'endInvoiceDate'] = endInvoiceDate;
    }

    return json;
  }

}
