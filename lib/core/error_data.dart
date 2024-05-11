import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_data.freezed.dart';

@freezed
class ErrorData with _$ErrorData{
  const factory ErrorData.httpInternalServerError(String errorBody) =
  HttpInternalServerErrorData;

  const factory ErrorData.httpUnAuthorizedError() = HttpUnAuthorizedErrorData;

  const factory ErrorData.httpUnknownError(String message) = HttpUnknownErrorData;
}
