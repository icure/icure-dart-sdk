//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class MessageApi {
  MessageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> rawCreateMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Creates a message
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> rawCreateMessage(MessageDto messageDto,) async {
    final response = await rawCreateMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Deletes a message delegation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] delegateId (required):
  Future<Response> rawDeleteDelegationWithHttpInfo(String messageId, String delegateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/{messageId}/delegate/{delegateId}'
        .replaceAll('{messageId}', messageId)
        .replaceAll('{delegateId}', delegateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes a message delegation
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] delegateId (required):
  Future<MessageDto?> rawDeleteDelegation(String messageId, String delegateId,) async {
    final response = await rawDeleteDelegationWithHttpInfo(messageId, delegateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Deletes multiple messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawDeleteMessagesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/delete/batch';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes multiple messages
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> rawDeleteMessages(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteMessagesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  Future<Response> rawFindMessagesWithHttpInfo({ String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages (paginated) for current HC Party
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  Future<PaginatedListMessageDto?> rawFindMessages({ String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await rawFindMessagesWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;

    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided from address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> rawFindMessagesByFromAddressWithHttpInfo({ String? fromAddress, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byFromAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromAddress != null) {
      queryParams.addAll(_queryParams('', 'fromAddress', fromAddress));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages (paginated) for current HC Party and provided from address
  ///
  /// Parameters:
  ///
  /// * [String] fromAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> rawFindMessagesByFromAddress({ String? fromAddress, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await rawFindMessagesByFromAddressWithHttpInfo( fromAddress: fromAddress, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;

    }
    return null;
  }

  /// List messages found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] secretFKeys (required):
  Future<Response> rawFindMessagesByHCPartyPatientForeignKeysWithHttpInfo(String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List messages found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] secretFKeys (required):
  Future<List<MessageDto>?> rawFindMessagesByHCPartyPatientForeignKeys(String secretFKeys,) async {
    final response = await rawFindMessagesByHCPartyPatientForeignKeysWithHttpInfo(secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided to address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] toAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] reverse:
  ///
  /// * [String] hcpId:
  Future<Response> rawFindMessagesByToAddressWithHttpInfo({ String? toAddress, String? startKey, String? startDocumentId, int? limit, bool? reverse, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byToAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (toAddress != null) {
      queryParams.addAll(_queryParams('', 'toAddress', toAddress));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (reverse != null) {
      queryParams.addAll(_queryParams('', 'reverse', reverse));
    }
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages (paginated) for current HC Party and provided to address
  ///
  /// Parameters:
  ///
  /// * [String] toAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] reverse:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> rawFindMessagesByToAddress({ String? toAddress, String? startKey, String? startDocumentId, int? limit, bool? reverse, String? hcpId, }) async {
    final response = await rawFindMessagesByToAddressWithHttpInfo( toAddress: toAddress, startKey: startKey, startDocumentId: startDocumentId, limit: limit, reverse: reverse, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;

    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided transportGuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [bool] received:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> rawFindMessagesByTransportGuidWithHttpInfo({ String? transportGuid, bool? received, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byTransportGuid';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (transportGuid != null) {
      queryParams.addAll(_queryParams('', 'transportGuid', transportGuid));
    }
    if (received != null) {
      queryParams.addAll(_queryParams('', 'received', received));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages (paginated) for current HC Party and provided transportGuid
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [bool] received:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> rawFindMessagesByTransportGuid({ String? transportGuid, bool? received, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await rawFindMessagesByTransportGuidWithHttpInfo( transportGuid: transportGuid, received: received, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;

    }
    return null;
  }

  /// Get all messages starting by a prefix between two date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> rawFindMessagesByTransportGuidSentDateWithHttpInfo({ String? transportGuid, int? from, int? to, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byTransportGuidSentDate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (transportGuid != null) {
      queryParams.addAll(_queryParams('', 'transportGuid', transportGuid));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages starting by a prefix between two date
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> rawFindMessagesByTransportGuidSentDate({ String? transportGuid, int? from, int? to, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await rawFindMessagesByTransportGuidSentDateWithHttpInfo( transportGuid: transportGuid, from: from, to: to, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;

    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> rawGetChildrenMessagesWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/{messageId}/children'.replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<List<MessageDto>?> rawGetChildrenMessages(String messageId,) async {
    final response = await rawGetChildrenMessagesWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Gets a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> rawGetMessageWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/{messageId}'.replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Gets a message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<MessageDto?> rawGetMessage(String messageId,) async {
    final response = await rawGetMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawGetMessagesChildrenWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/children/batch';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> rawGetMessagesChildren(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawGetMessagesChildrenWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawListMessagesByInvoicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byInvoice';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> rawListMessagesByInvoices(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawListMessagesByInvoicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get all messages for current HC Party and provided transportGuids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcpId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawListMessagesByTransportGuidsWithHttpInfo(String hcpId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/byTransportGuid/list';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcpId', hcpId));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all messages for current HC Party and provided transportGuids
  ///
  /// Parameters:
  ///
  /// * [String] hcpId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> rawListMessagesByTransportGuids(String hcpId, ListOfIdsDto listOfIdsDto,) async {
    final response = await rawListMessagesByTransportGuidsWithHttpInfo(hcpId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Updates a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> rawModifyMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Updates a message
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> rawModifyMessage(MessageDto messageDto,) async {
    final response = await rawModifyMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Adds a delegation to a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> rawNewMessageDelegationsWithHttpInfo(String messageId, List<DelegationDto> delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/{messageId}/delegate'
        .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Adds a delegation to a message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<IcureStubDto?> rawNewMessageDelegations(String messageId, List<DelegationDto> delegationDto,) async {
    final response = await rawNewMessageDelegationsWithHttpInfo(messageId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IcureStubDto',) as IcureStubDto;

    }
    return null;
  }

  /// Set read status for given list of messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessagesReadStatusUpdate] messagesReadStatusUpdate (required):
  Future<Response> rawSetMessagesReadStatusWithHttpInfo(MessagesReadStatusUpdate messagesReadStatusUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/readstatus';

    // ignore: prefer_final_locals
    Object? postBody = messagesReadStatusUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Set read status for given list of messages
  ///
  /// Parameters:
  ///
  /// * [MessagesReadStatusUpdate] messagesReadStatusUpdate (required):
  Future<List<MessageDto>?> rawSetMessagesReadStatus(MessagesReadStatusUpdate messagesReadStatusUpdate,) async {
    final response = await rawSetMessagesReadStatusWithHttpInfo(messagesReadStatusUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Set status bits for given list of messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawSetMessagesStatusBitsWithHttpInfo(int status, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/message/status/{status}'.replaceAll('{status}', status.toString());

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Set status bits for given list of messages
  ///
  /// Parameters:
  ///
  /// * [int] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> rawSetMessagesStatusBits(int status, ListOfIdsDto listOfIdsDto,) async {
    final response = await rawSetMessagesStatusBitsWithHttpInfo(status, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }
}
