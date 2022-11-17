//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ApiException implements Exception {
  ApiException(this.code, this.message);

  ApiException.withRequestId(this.code, this.message, this.requestId, this.url);

  ApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  int code = 0;
  String? message;
  String? requestId;
  String? url;
  Exception? innerException;
  StackTrace? stackTrace;

  @override
  String toString() {
    if (message == null) {
      return 'ApiException';
    }
    if (requestId != null) {
      return '$code - $message\nX-Request-Id: $requestId\nURL: $url';
    }
    if (innerException == null) {
      return '$code: $message';
    }
    return 'ApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace';
  }
}
