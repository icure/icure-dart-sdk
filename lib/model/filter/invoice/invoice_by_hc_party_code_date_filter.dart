// @dart=2.12
part of openapi.api;


class InvoiceByHcPartyCodeDateFilter extends AbstractFilterDto<InvoiceDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  String? code;
  int? startInvoiceDate;
  int? endInvoiceDate;
}
