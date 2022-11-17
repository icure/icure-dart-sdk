//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class PermissionApi {
  PermissionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add / Revoke permissions to user
  ///
  /// Add a list of granted and revoked permissions to user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [PermissionDto] permissionDto (required):
  Future<Response> modifyUserPermissionsWithHttpInfo(String userId, PermissionDto permissionDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/permissions/{userId}'
        .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = permissionDto;

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

  /// Add / Revoke permissions to user
  ///
  /// Add a list of granted and revoked permissions to user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [PermissionDto] permissionDto (required):
  Future<List<PermissionDto>?> modifyUserPermissions(String userId, PermissionDto permissionDto,) async {
    final response = await modifyUserPermissionsWithHttpInfo(userId, permissionDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PermissionDto>') as List)
        .cast<PermissionDto>()
        .toList();

    }
    return null;
  }
}
