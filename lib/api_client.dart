//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ApiClient {
  ApiClient({this.basePath = 'https://kraken.icure.dev'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'basicSchema'] = HttpBasicAuth();
  }

  ApiClient.basic(this.basePath, String userName, String password) {
    _authentications[r'basicSchema'] = HttpBasicAuth(username: userName, password: password);
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Auth>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Auth> get authentications => Map.unmodifiable(_authentications);

  T? getAuthentication<T extends Auth>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for(final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AbstractFilterDtoCode':
          return AbstractFilterDtoCode.fromJson(value);
        case 'AbstractFilterDtoContact':
          return AbstractFilterDtoContact.fromJson(value);
        case 'AbstractFilterDtoDevice':
          return AbstractFilterDtoDevice.fromJson(value);
        case 'AbstractFilterDtoHealthElement':
          return AbstractFilterDtoHealthElement.fromJson(value);
        case 'AbstractFilterDtoHealthcareParty':
          return AbstractFilterDtoHealthcareParty.fromJson(value);
        case 'AbstractFilterDtoInvoice':
          return AbstractFilterDtoInvoice.fromJson(value);
        case 'AbstractFilterDtoPatient':
          return AbstractFilterDtoPatient.fromJson(value);
        case 'AbstractFilterDtoService':
          return AbstractFilterDtoService.fromJson(value);
        case 'AbstractFilterDtoUser':
          return AbstractFilterDtoUser.fromJson(value);
        case 'AccessLogDto':
          return AccessLogDto.fromJson(value);
        case 'AddressDto':
          return AddressDto.fromJson(value);
        case 'AdministrationQuantity':
          return AdministrationQuantity.fromJson(value);
        case 'AgendaDto':
          return AgendaDto.fromJson(value);
        case 'AgreementAppendixDto':
          return AgreementAppendixDto.fromJson(value);
        case 'AmpComponentDto':
          return AmpComponentDto.fromJson(value);
        case 'AmpDto':
          return AmpDto.fromJson(value);
        case 'AmppComponentDto':
          return AmppComponentDto.fromJson(value);
        case 'AmppDto':
          return AmppDto.fromJson(value);
        case 'AnnotationDto':
          return AnnotationDto.fromJson(value);
        case 'ApplicationSettingsDto':
          return ApplicationSettingsDto.fromJson(value);
        case 'ArticleDto':
          return ArticleDto.fromJson(value);
        case 'AtcDto':
          return AtcDto.fromJson(value);
        case 'Authentication':
          return Authentication.fromJson(value);
        case 'AuthenticationResponse':
          return AuthenticationResponse.fromJson(value);
        case 'AuthenticationTokenDto':
          return AuthenticationTokenDto.fromJson(value);
        case 'Basic':
          return Basic.fromJson(value);
        case 'BasicDto':
          return BasicDto.fromJson(value);
        case 'ByteArrayDto':
          return ByteArrayDto.fromJson(value);
        case 'CalendarItemDto':
          return CalendarItemDto.fromJson(value);
        case 'CalendarItemTagDto':
          return CalendarItemTagDto.fromJson(value);
        case 'CalendarItemTypeDto':
          return CalendarItemTypeDto.fromJson(value);
        case 'CareTeamMemberDto':
          return CareTeamMemberDto.fromJson(value);
        case 'CareTeamMembershipDto':
          return CareTeamMembershipDto.fromJson(value);
        case 'CheckSMFPatientResult':
          return CheckSMFPatientResult.fromJson(value);
        case 'ClassificationDto':
          return ClassificationDto.fromJson(value);
        case 'ClassificationTemplateDto':
          return ClassificationTemplateDto.fromJson(value);
        case 'CodeDto':
          return CodeDto.fromJson(value);
        case 'CodeStub':
          return CodeStub.fromJson(value);
        case 'CodeStubDto':
          return CodeStubDto.fromJson(value);
        case 'CommentedClassificationDto':
          return CommentedClassificationDto.fromJson(value);
        case 'CommercializationDto':
          return CommercializationDto.fromJson(value);
        case 'CompanyDto':
          return CompanyDto.fromJson(value);
        case 'ContactDto':
          return ContactDto.fromJson(value);
        case 'ContentDto':
          return ContentDto.fromJson(value);
        case 'CopaymentDto':
          return CopaymentDto.fromJson(value);
        case 'DatabaseInitialisationDto':
          return DatabaseInitialisationDto.fromJson(value);
        case 'DatabaseSynchronizationDto':
          return DatabaseSynchronizationDto.fromJson(value);
        case 'DelegationDto':
          return DelegationDto.fromJson(value);
        case 'DeviceDto':
          return DeviceDto.fromJson(value);
        case 'DeviceTypeDto':
          return DeviceTypeDto.fromJson(value);
        case 'DiaryNoteExportInfoDto':
          return DiaryNoteExportInfoDto.fromJson(value);
        case 'DmppDto':
          return DmppDto.fromJson(value);
        case 'DocIdentifier':
          return DocIdentifier.fromJson(value);
        case 'DocumentDto':
          return DocumentDto.fromJson(value);
        case 'DocumentGroupDto':
          return DocumentGroupDto.fromJson(value);
        case 'DocumentTemplateDto':
          return DocumentTemplateDto.fromJson(value);
        case 'DurationDto':
          return DurationDto.fromJson(value);
        case 'EIDItem':
          return EIDItem.fromJson(value);
        case 'Editor':
          return Editor.fromJson(value);
        case 'EfactInvoice':
          return EfactInvoice.fromJson(value);
        case 'EmailTemplateDto':
          return EmailTemplateDto.fromJson(value);
        case 'EmployerDto':
          return EmployerDto.fromJson(value);
        case 'EmploymentInfoDto':
          return EmploymentInfoDto.fromJson(value);
        case 'EntityReferenceDto':
          return EntityReferenceDto.fromJson(value);
        case 'EntityTemplateDto':
          return EntityTemplateDto.fromJson(value);
        case 'EpisodeDto':
          return EpisodeDto.fromJson(value);
        case 'FilterChainCode':
          return FilterChainCode.fromJson(value);
        case 'FilterChainContact':
          return FilterChainContact.fromJson(value);
        case 'FilterChainDevice':
          return FilterChainDevice.fromJson(value);
        case 'FilterChainHealthElement':
          return FilterChainHealthElement.fromJson(value);
        case 'FilterChainHealthcareParty':
          return FilterChainHealthcareParty.fromJson(value);
        case 'FilterChainInvoice':
          return FilterChainInvoice.fromJson(value);
        case 'FilterChainPatient':
          return FilterChainPatient.fromJson(value);
        case 'FilterChainService':
          return FilterChainService.fromJson(value);
        case 'FilterChainUser':
          return FilterChainUser.fromJson(value);
        case 'FinancialInstitutionInformationDto':
          return FinancialInstitutionInformationDto.fromJson(value);
        case 'FlatRateTarificationDto':
          return FlatRateTarificationDto.fromJson(value);
        case 'FlowItemDto':
          return FlowItemDto.fromJson(value);
        case 'FormColumn':
          return FormColumn.fromJson(value);
        case 'FormDataOption':
          return FormDataOption.fromJson(value);
        case 'FormDto':
          return FormDto.fromJson(value);
        case 'FormLayout':
          return FormLayout.fromJson(value);
        case 'FormLayoutData':
          return FormLayoutData.fromJson(value);
        case 'FormPlanning':
          return FormPlanning.fromJson(value);
        case 'FormSection':
          return FormSection.fromJson(value);
        case 'FormTemplateDto':
          return FormTemplateDto.fromJson(value);
        case 'FormTemplateLayout':
          return FormTemplateLayout.fromJson(value);
        case 'Formula':
          return Formula.fromJson(value);
        case 'FrontEndMigrationDto':
          return FrontEndMigrationDto.fromJson(value);
        case 'GroupDto':
          return GroupDto.fromJson(value);
        case 'GuiCode':
          return GuiCode.fromJson(value);
        case 'GuiCodeType':
          return GuiCodeType.fromJson(value);
        case 'HealthElementDto':
          return HealthElementDto.fromJson(value);
        case 'HealthcarePartyDto':
          return HealthcarePartyDto.fromJson(value);
        case 'HealthcarePartyHistoryStatusDto':
          return HealthcarePartyHistoryStatusDto.fromJson(value);
        case 'IcureStubDto':
          return IcureStubDto.fromJson(value);
        case 'IdWithRevDto':
          return IdWithRevDto.fromJson(value);
        case 'IdentifierDto':
          return IdentifierDto.fromJson(value);
        case 'IdentityDocumentReaderDto':
          return IdentityDocumentReaderDto.fromJson(value);
        case 'ImportMapping':
          return ImportMapping.fromJson(value);
        case 'ImportResultDto':
          return ImportResultDto.fromJson(value);
        case 'IndexingInfoDto':
          return IndexingInfoDto.fromJson(value);
        case 'IngredientDto':
          return IngredientDto.fromJson(value);
        case 'InsurabilityDto':
          return InsurabilityDto.fromJson(value);
        case 'InsuranceDto':
          return InsuranceDto.fromJson(value);
        case 'InvoiceDto':
          return InvoiceDto.fromJson(value);
        case 'InvoiceItem':
          return InvoiceItem.fromJson(value);
        case 'InvoiceSender':
          return InvoiceSender.fromJson(value);
        case 'InvoicesBatch':
          return InvoicesBatch.fromJson(value);
        case 'InvoicingCodeDto':
          return InvoicingCodeDto.fromJson(value);
        case 'KeywordDto':
          return KeywordDto.fromJson(value);
        case 'KeywordSubwordDto':
          return KeywordSubwordDto.fromJson(value);
        case 'LabelledOccurenceDto':
          return LabelledOccurenceDto.fromJson(value);
        case 'LetterValueDto':
          return LetterValueDto.fromJson(value);
        case 'ListOfIdsDto':
          return ListOfIdsDto.fromJson(value);
        case 'ListOfPropertiesDto':
          return ListOfPropertiesDto.fromJson(value);
        case 'LoginCredentials':
          return LoginCredentials.fromJson(value);
        case 'MapOfIdsDto':
          return MapOfIdsDto.fromJson(value);
        case 'MeasureDto':
          return MeasureDto.fromJson(value);
        case 'MedexInfoDto':
          return MedexInfoDto.fromJson(value);
        case 'MedicalHouseContractDto':
          return MedicalHouseContractDto.fromJson(value);
        case 'MedicalLocationDto':
          return MedicalLocationDto.fromJson(value);
        case 'MedicationDto':
          return MedicationDto.fromJson(value);
        case 'MedicationSchemeExportInfoDto':
          return MedicationSchemeExportInfoDto.fromJson(value);
        case 'MedicinalproductDto':
          return MedicinalproductDto.fromJson(value);
        case 'MessageDto':
          return MessageDto.fromJson(value);
        case 'MessageReadStatusDto':
          return MessageReadStatusDto.fromJson(value);
        case 'MessageWithBatch':
          return MessageWithBatch.fromJson(value);
        case 'MessagesReadStatusUpdate':
          return MessagesReadStatusUpdate.fromJson(value);
        case 'MimeAttachmentDto':
          return MimeAttachmentDto.fromJson(value);
        case 'NmpDto':
          return NmpDto.fromJson(value);
        case 'NoGenericPrescriptionReasonDto':
          return NoGenericPrescriptionReasonDto.fromJson(value);
        case 'NoSwitchReasonDto':
          return NoSwitchReasonDto.fromJson(value);
        case 'NumeratorRangeDto':
          return NumeratorRangeDto.fromJson(value);
        case 'PackagingTypeDto':
          return PackagingTypeDto.fromJson(value);
        case 'PaginatedDocumentKeyIdPairObject':
          return PaginatedDocumentKeyIdPairObject.fromJson(value);
        case 'PaginatedListAccessLogDto':
          return PaginatedListAccessLogDto.fromJson(value);
        case 'PaginatedListAmpDto':
          return PaginatedListAmpDto.fromJson(value);
        case 'PaginatedListClassificationDto':
          return PaginatedListClassificationDto.fromJson(value);
        case 'PaginatedListClassificationTemplateDto':
          return PaginatedListClassificationTemplateDto.fromJson(value);
        case 'PaginatedListCodeDto':
          return PaginatedListCodeDto.fromJson(value);
        case 'PaginatedListContactDto':
          return PaginatedListContactDto.fromJson(value);
        case 'PaginatedListDeviceDto':
          return PaginatedListDeviceDto.fromJson(value);
        case 'PaginatedListDocumentDto':
          return PaginatedListDocumentDto.fromJson(value);
        case 'PaginatedListEntityTemplateDto':
          return PaginatedListEntityTemplateDto.fromJson(value);
        case 'PaginatedListFormDto':
          return PaginatedListFormDto.fromJson(value);
        case 'PaginatedListHealthElementDto':
          return PaginatedListHealthElementDto.fromJson(value);
        case 'PaginatedListHealthcarePartyDto':
          return PaginatedListHealthcarePartyDto.fromJson(value);
        case 'PaginatedListInvoiceDto':
          return PaginatedListInvoiceDto.fromJson(value);
        case 'PaginatedListMessageDto':
          return PaginatedListMessageDto.fromJson(value);
        case 'PaginatedListNmpDto':
          return PaginatedListNmpDto.fromJson(value);
        case 'PaginatedListPatientDto':
          return PaginatedListPatientDto.fromJson(value);
        case 'PaginatedListServiceDto':
          return PaginatedListServiceDto.fromJson(value);
        case 'PaginatedListString':
          return PaginatedListString.fromJson(value);
        case 'PaginatedListTarificationDto':
          return PaginatedListTarificationDto.fromJson(value);
        case 'PaginatedListUserDto':
          return PaginatedListUserDto.fromJson(value);
        case 'PaginatedListVmpDto':
          return PaginatedListVmpDto.fromJson(value);
        case 'PaginatedListVmpGroupDto':
          return PaginatedListVmpGroupDto.fromJson(value);
        case 'ParagraphAgreementDto':
          return ParagraphAgreementDto.fromJson(value);
        case 'PartnershipDto':
          return PartnershipDto.fromJson(value);
        case 'PatientDto':
          return PatientDto.fromJson(value);
        case 'PatientHealthCarePartyDto':
          return PatientHealthCarePartyDto.fromJson(value);
        case 'PatientRegistrationSuccessDto':
          return PatientRegistrationSuccessDto.fromJson(value);
        case 'PaymentDto':
          return PaymentDto.fromJson(value);
        case 'PeriodicityDto':
          return PeriodicityDto.fromJson(value);
        case 'PermissionDto':
          return PermissionDto.fromJson(value);
        case 'PermissionItemDto':
          return PermissionItemDto.fromJson(value);
        case 'PersonNameDto':
          return PersonNameDto.fromJson(value);
        case 'PharmaceuticalFormDto':
          return PharmaceuticalFormDto.fromJson(value);
        case 'PharmaceuticalFormStubDto':
          return PharmaceuticalFormStubDto.fromJson(value);
        case 'PlaceDto':
          return PlaceDto.fromJson(value);
        case 'PlanOfActionDto':
          return PlanOfActionDto.fromJson(value);
        case 'PricingDto':
          return PricingDto.fromJson(value);
        case 'PropertyStubDto':
          return PropertyStubDto.fromJson(value);
        case 'PropertyTypeStubDto':
          return PropertyTypeStubDto.fromJson(value);
        case 'PublicKeyDto':
          return PublicKeyDto.fromJson(value);
        case 'QuantityDto':
          return QuantityDto.fromJson(value);
        case 'ReceiptDto':
          return ReceiptDto.fromJson(value);
        case 'ReferralPeriodDto':
          return ReferralPeriodDto.fromJson(value);
        case 'RegimenItemDto':
          return RegimenItemDto.fromJson(value);
        case 'RegistrationInformationDto':
          return RegistrationInformationDto.fromJson(value);
        case 'RegistrationSuccessDto':
          return RegistrationSuccessDto.fromJson(value);
        case 'ReimbursementCriterionDto':
          return ReimbursementCriterionDto.fromJson(value);
        case 'ReimbursementDto':
          return ReimbursementDto.fromJson(value);
        case 'Remote':
          return Remote.fromJson(value);
        case 'RemoteAuthenticationDto':
          return RemoteAuthenticationDto.fromJson(value);
        case 'RemoteDto':
          return RemoteDto.fromJson(value);
        case 'RenewalDto':
          return RenewalDto.fromJson(value);
        case 'ReplicationDto':
          return ReplicationDto.fromJson(value);
        case 'ReplicationInfoDto':
          return ReplicationInfoDto.fromJson(value);
        case 'ReplicationStats':
          return ReplicationStats.fromJson(value);
        case 'ReplicationStatsDto':
          return ReplicationStatsDto.fromJson(value);
        case 'ReplicatorDocument':
          return ReplicatorDocument.fromJson(value);
        case 'ReplicatorDocumentDto':
          return ReplicatorDocumentDto.fromJson(value);
        case 'ResultInfoDto':
          return ResultInfoDto.fromJson(value);
        case 'RightDto':
          return RightDto.fromJson(value);
        case 'RouteOfAdministrationDto':
          return RouteOfAdministrationDto.fromJson(value);
        case 'SamTextDto':
          return SamTextDto.fromJson(value);
        case 'SamVersionDto':
          return SamVersionDto.fromJson(value);
        case 'SchoolingInfoDto':
          return SchoolingInfoDto.fromJson(value);
        case 'Section':
          return Section.fromJson(value);
        case 'ServiceDto':
          return ServiceDto.fromJson(value);
        case 'ServiceLinkDto':
          return ServiceLinkDto.fromJson(value);
        case 'SoftwareMedicalFileExportDto':
          return SoftwareMedicalFileExportDto.fromJson(value);
        case 'StandardSubstanceDto':
          return StandardSubstanceDto.fromJson(value);
        case 'StrengthRangeDto':
          return StrengthRangeDto.fromJson(value);
        case 'SubContactDto':
          return SubContactDto.fromJson(value);
        case 'SubstanceDto':
          return SubstanceDto.fromJson(value);
        case 'SubstanceStubDto':
          return SubstanceStubDto.fromJson(value);
        case 'SubstanceproductDto':
          return SubstanceproductDto.fromJson(value);
        case 'Suggest':
          return Suggest.fromJson(value);
        case 'SumehrContentDto':
          return SumehrContentDto.fromJson(value);
        case 'SumehrExportInfoDto':
          return SumehrExportInfoDto.fromJson(value);
        case 'SumehrValidityDto':
          return SumehrValidityDto.fromJson(value);
        case 'SupplyProblemDto':
          return SupplyProblemDto.fromJson(value);
        case 'SuspensionDto':
          return SuspensionDto.fromJson(value);
        case 'Tag':
          return Tag.fromJson(value);
        case 'TarificationDto':
          return TarificationDto.fromJson(value);
        case 'TelecomDto':
          return TelecomDto.fromJson(value);
        case 'TimeSeriesDto':
          return TimeSeriesDto.fromJson(value);
        case 'TimeTableDto':
          return TimeTableDto.fromJson(value);
        case 'TimeTableHourDto':
          return TimeTableHourDto.fromJson(value);
        case 'TimeTableItemDto':
          return TimeTableItemDto.fromJson(value);
        case 'TypedValueDtoObject':
          return TypedValueDtoObject.fromJson(value);
        case 'UserDto':
          return UserDto.fromJson(value);
        case 'UserGroupDto':
          return UserGroupDto.fromJson(value);
        case 'ValorisationDto':
          return ValorisationDto.fromJson(value);
        case 'VirtualFormDto':
          return VirtualFormDto.fromJson(value);
        case 'VirtualIngredientDto':
          return VirtualIngredientDto.fromJson(value);
        case 'VmpComponentDto':
          return VmpComponentDto.fromJson(value);
        case 'VmpDto':
          return VmpDto.fromJson(value);
        case 'VmpGroupDto':
          return VmpGroupDto.fromJson(value);
        case 'VmpGroupStubDto':
          return VmpGroupStubDto.fromJson(value);
        case 'VmpStubDto':
          return VmpStubDto.fromJson(value);
        case 'VtmDto':
          return VtmDto.fromJson(value);
        case 'WadaDto':
          return WadaDto.fromJson(value);
        case 'Weekday':
          return Weekday.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
