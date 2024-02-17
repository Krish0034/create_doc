// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerErrorData value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedErrorData value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownErrorData value) httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult? Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownErrorData value)? httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownErrorData value)? httpUnknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDataCopyWith<$Res> {
  factory $ErrorDataCopyWith(ErrorData value, $Res Function(ErrorData) then) =
      _$ErrorDataCopyWithImpl<$Res, ErrorData>;
}

/// @nodoc
class _$ErrorDataCopyWithImpl<$Res, $Val extends ErrorData>
    implements $ErrorDataCopyWith<$Res> {
  _$ErrorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpInternalServerErrorDataImplCopyWith<$Res> {
  factory _$$HttpInternalServerErrorDataImplCopyWith(
          _$HttpInternalServerErrorDataImpl value,
          $Res Function(_$HttpInternalServerErrorDataImpl) then) =
      __$$HttpInternalServerErrorDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorBody});
}

/// @nodoc
class __$$HttpInternalServerErrorDataImplCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$HttpInternalServerErrorDataImpl>
    implements _$$HttpInternalServerErrorDataImplCopyWith<$Res> {
  __$$HttpInternalServerErrorDataImplCopyWithImpl(
      _$HttpInternalServerErrorDataImpl _value,
      $Res Function(_$HttpInternalServerErrorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorBody = null,
  }) {
    return _then(_$HttpInternalServerErrorDataImpl(
      null == errorBody
          ? _value.errorBody
          : errorBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpInternalServerErrorDataImpl implements HttpInternalServerErrorData {
  const _$HttpInternalServerErrorDataImpl(this.errorBody);

  @override
  final String errorBody;

  @override
  String toString() {
    return 'ErrorData.httpInternalServerError(errorBody: $errorBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInternalServerErrorDataImpl &&
            (identical(other.errorBody, errorBody) ||
                other.errorBody == errorBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInternalServerErrorDataImplCopyWith<_$HttpInternalServerErrorDataImpl>
      get copyWith => __$$HttpInternalServerErrorDataImplCopyWithImpl<
          _$HttpInternalServerErrorDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
  }) {
    return httpInternalServerError(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
  }) {
    return httpInternalServerError?.call(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerErrorData value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedErrorData value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownErrorData value) httpUnknownError,
  }) {
    return httpInternalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult? Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownErrorData value)? httpUnknownError,
  }) {
    return httpInternalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownErrorData value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(this);
    }
    return orElse();
  }
}

abstract class HttpInternalServerErrorData implements ErrorData {
  const factory HttpInternalServerErrorData(final String errorBody) =
      _$HttpInternalServerErrorDataImpl;

  String get errorBody;
  @JsonKey(ignore: true)
  _$$HttpInternalServerErrorDataImplCopyWith<_$HttpInternalServerErrorDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpUnAuthorizedErrorDataImplCopyWith<$Res> {
  factory _$$HttpUnAuthorizedErrorDataImplCopyWith(
          _$HttpUnAuthorizedErrorDataImpl value,
          $Res Function(_$HttpUnAuthorizedErrorDataImpl) then) =
      __$$HttpUnAuthorizedErrorDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpUnAuthorizedErrorDataImplCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$HttpUnAuthorizedErrorDataImpl>
    implements _$$HttpUnAuthorizedErrorDataImplCopyWith<$Res> {
  __$$HttpUnAuthorizedErrorDataImplCopyWithImpl(
      _$HttpUnAuthorizedErrorDataImpl _value,
      $Res Function(_$HttpUnAuthorizedErrorDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpUnAuthorizedErrorDataImpl implements HttpUnAuthorizedErrorData {
  const _$HttpUnAuthorizedErrorDataImpl();

  @override
  String toString() {
    return 'ErrorData.httpUnAuthorizedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnAuthorizedErrorDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
  }) {
    return httpUnAuthorizedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
  }) {
    return httpUnAuthorizedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnAuthorizedError != null) {
      return httpUnAuthorizedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerErrorData value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedErrorData value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownErrorData value) httpUnknownError,
  }) {
    return httpUnAuthorizedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult? Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownErrorData value)? httpUnknownError,
  }) {
    return httpUnAuthorizedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownErrorData value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnAuthorizedError != null) {
      return httpUnAuthorizedError(this);
    }
    return orElse();
  }
}

abstract class HttpUnAuthorizedErrorData implements ErrorData {
  const factory HttpUnAuthorizedErrorData() = _$HttpUnAuthorizedErrorDataImpl;
}

/// @nodoc
abstract class _$$HttpUnknownErrorDataImplCopyWith<$Res> {
  factory _$$HttpUnknownErrorDataImplCopyWith(_$HttpUnknownErrorDataImpl value,
          $Res Function(_$HttpUnknownErrorDataImpl) then) =
      __$$HttpUnknownErrorDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HttpUnknownErrorDataImplCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$HttpUnknownErrorDataImpl>
    implements _$$HttpUnknownErrorDataImplCopyWith<$Res> {
  __$$HttpUnknownErrorDataImplCopyWithImpl(_$HttpUnknownErrorDataImpl _value,
      $Res Function(_$HttpUnknownErrorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HttpUnknownErrorDataImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpUnknownErrorDataImpl implements HttpUnknownErrorData {
  const _$HttpUnknownErrorDataImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ErrorData.httpUnknownError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnknownErrorDataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpUnknownErrorDataImplCopyWith<_$HttpUnknownErrorDataImpl>
      get copyWith =>
          __$$HttpUnknownErrorDataImplCopyWithImpl<_$HttpUnknownErrorDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function() httpUnAuthorizedError,
    required TResult Function(String message) httpUnknownError,
  }) {
    return httpUnknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function()? httpUnAuthorizedError,
    TResult? Function(String message)? httpUnknownError,
  }) {
    return httpUnknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function()? httpUnAuthorizedError,
    TResult Function(String message)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerErrorData value)
        httpInternalServerError,
    required TResult Function(HttpUnAuthorizedErrorData value)
        httpUnAuthorizedError,
    required TResult Function(HttpUnknownErrorData value) httpUnknownError,
  }) {
    return httpUnknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult? Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult? Function(HttpUnknownErrorData value)? httpUnknownError,
  }) {
    return httpUnknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerErrorData value)?
        httpInternalServerError,
    TResult Function(HttpUnAuthorizedErrorData value)? httpUnAuthorizedError,
    TResult Function(HttpUnknownErrorData value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(this);
    }
    return orElse();
  }
}

abstract class HttpUnknownErrorData implements ErrorData {
  const factory HttpUnknownErrorData(final String message) =
      _$HttpUnknownErrorDataImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HttpUnknownErrorDataImplCopyWith<_$HttpUnknownErrorDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
