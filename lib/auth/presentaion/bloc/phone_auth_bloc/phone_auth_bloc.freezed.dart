// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneAuthEvent {
  AuthType get authType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData, AuthType authType) createUser,
    required TResult Function(String phoneNumberWithCode, AuthType authType)
        sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData, AuthType authType)? createUser,
    TResult? Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData, AuthType authType)? createUser,
    TResult Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUser value) createUser,
    required TResult Function(SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUser value)? createUser,
    TResult Function(SendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneAuthEventCopyWith<PhoneAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthEventCopyWith<$Res> {
  factory $PhoneAuthEventCopyWith(
          PhoneAuthEvent value, $Res Function(PhoneAuthEvent) then) =
      _$PhoneAuthEventCopyWithImpl<$Res, PhoneAuthEvent>;
  @useResult
  $Res call({AuthType authType});
}

/// @nodoc
class _$PhoneAuthEventCopyWithImpl<$Res, $Val extends PhoneAuthEvent>
    implements $PhoneAuthEventCopyWith<$Res> {
  _$PhoneAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authType = null,
  }) {
    return _then(_value.copyWith(
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res>
    implements $PhoneAuthEventCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData userData, AuthType authType});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? authType = null,
  }) {
    return _then(_$CreateUserImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements CreateUser {
  const _$CreateUserImpl({required this.userData, required this.authType});

  @override
  final UserData userData;
  @override
  final AuthType authType;

  @override
  String toString() {
    return 'PhoneAuthEvent.createUser(userData: $userData, authType: $authType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.authType, authType) ||
                other.authType == authType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, authType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData, AuthType authType) createUser,
    required TResult Function(String phoneNumberWithCode, AuthType authType)
        sendOtp,
  }) {
    return createUser(userData, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData, AuthType authType)? createUser,
    TResult? Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
  }) {
    return createUser?.call(userData, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData, AuthType authType)? createUser,
    TResult Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(userData, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUser value) createUser,
    required TResult Function(SendOtp value) sendOtp,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(SendOtp value)? sendOtp,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUser value)? createUser,
    TResult Function(SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUser implements PhoneAuthEvent {
  const factory CreateUser(
      {required final UserData userData,
      required final AuthType authType}) = _$CreateUserImpl;

  UserData get userData;
  @override
  AuthType get authType;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res>
    implements $PhoneAuthEventCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumberWithCode, AuthType authType});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberWithCode = null,
    Object? authType = null,
  }) {
    return _then(_$SendOtpImpl(
      phoneNumberWithCode: null == phoneNumberWithCode
          ? _value.phoneNumberWithCode
          : phoneNumberWithCode // ignore: cast_nullable_to_non_nullable
              as String,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements SendOtp {
  const _$SendOtpImpl(
      {required this.phoneNumberWithCode, required this.authType});

  @override
  final String phoneNumberWithCode;
  @override
  final AuthType authType;

  @override
  String toString() {
    return 'PhoneAuthEvent.sendOtp(phoneNumberWithCode: $phoneNumberWithCode, authType: $authType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.phoneNumberWithCode, phoneNumberWithCode) ||
                other.phoneNumberWithCode == phoneNumberWithCode) &&
            (identical(other.authType, authType) ||
                other.authType == authType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberWithCode, authType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData, AuthType authType) createUser,
    required TResult Function(String phoneNumberWithCode, AuthType authType)
        sendOtp,
  }) {
    return sendOtp(phoneNumberWithCode, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData, AuthType authType)? createUser,
    TResult? Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
  }) {
    return sendOtp?.call(phoneNumberWithCode, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData, AuthType authType)? createUser,
    TResult Function(String phoneNumberWithCode, AuthType authType)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phoneNumberWithCode, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUser value) createUser,
    required TResult Function(SendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(SendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUser value)? createUser,
    TResult Function(SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtp implements PhoneAuthEvent {
  const factory SendOtp(
      {required final String phoneNumberWithCode,
      required final AuthType authType}) = _$SendOtpImpl;

  String get phoneNumberWithCode;
  @override
  AuthType get authType;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneAuthState {
  Option<UserData>? get userData => throw _privateConstructorUsedError;
  ErrorData? get errorData => throw _privateConstructorUsedError;
  Option<CodeModelResponse>? get codeModelResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthStateCopyWith<$Res> {
  factory $PhoneAuthStateCopyWith(
          PhoneAuthState value, $Res Function(PhoneAuthState) then) =
      _$PhoneAuthStateCopyWithImpl<$Res, PhoneAuthState>;
  @useResult
  $Res call(
      {Option<UserData>? userData,
      ErrorData? errorData,
      Option<CodeModelResponse>? codeModelResponse});

  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class _$PhoneAuthStateCopyWithImpl<$Res, $Val extends PhoneAuthState>
    implements $PhoneAuthStateCopyWith<$Res> {
  _$PhoneAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? errorData = freezed,
    Object? codeModelResponse = freezed,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>?,
      errorData: freezed == errorData
          ? _value.errorData
          : errorData // ignore: cast_nullable_to_non_nullable
              as ErrorData?,
      codeModelResponse: freezed == codeModelResponse
          ? _value.codeModelResponse
          : codeModelResponse // ignore: cast_nullable_to_non_nullable
              as Option<CodeModelResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDataCopyWith<$Res>? get errorData {
    if (_value.errorData == null) {
      return null;
    }

    return $ErrorDataCopyWith<$Res>(_value.errorData!, (value) {
      return _then(_value.copyWith(errorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhoneAuthStateImplCopyWith<$Res>
    implements $PhoneAuthStateCopyWith<$Res> {
  factory _$$PhoneAuthStateImplCopyWith(_$PhoneAuthStateImpl value,
          $Res Function(_$PhoneAuthStateImpl) then) =
      __$$PhoneAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<UserData>? userData,
      ErrorData? errorData,
      Option<CodeModelResponse>? codeModelResponse});

  @override
  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class __$$PhoneAuthStateImplCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res, _$PhoneAuthStateImpl>
    implements _$$PhoneAuthStateImplCopyWith<$Res> {
  __$$PhoneAuthStateImplCopyWithImpl(
      _$PhoneAuthStateImpl _value, $Res Function(_$PhoneAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? errorData = freezed,
    Object? codeModelResponse = freezed,
  }) {
    return _then(_$PhoneAuthStateImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>?,
      errorData: freezed == errorData
          ? _value.errorData
          : errorData // ignore: cast_nullable_to_non_nullable
              as ErrorData?,
      codeModelResponse: freezed == codeModelResponse
          ? _value.codeModelResponse
          : codeModelResponse // ignore: cast_nullable_to_non_nullable
              as Option<CodeModelResponse>?,
    ));
  }
}

/// @nodoc

class _$PhoneAuthStateImpl implements _PhoneAuthState {
  _$PhoneAuthStateImpl({this.userData, this.errorData, this.codeModelResponse});

  @override
  final Option<UserData>? userData;
  @override
  final ErrorData? errorData;
  @override
  final Option<CodeModelResponse>? codeModelResponse;

  @override
  String toString() {
    return 'PhoneAuthState(userData: $userData, errorData: $errorData, codeModelResponse: $codeModelResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneAuthStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.errorData, errorData) ||
                other.errorData == errorData) &&
            (identical(other.codeModelResponse, codeModelResponse) ||
                other.codeModelResponse == codeModelResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userData, errorData, codeModelResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneAuthStateImplCopyWith<_$PhoneAuthStateImpl> get copyWith =>
      __$$PhoneAuthStateImplCopyWithImpl<_$PhoneAuthStateImpl>(
          this, _$identity);
}

abstract class _PhoneAuthState implements PhoneAuthState {
  factory _PhoneAuthState(
          {final Option<UserData>? userData,
          final ErrorData? errorData,
          final Option<CodeModelResponse>? codeModelResponse}) =
      _$PhoneAuthStateImpl;

  @override
  Option<UserData>? get userData;
  @override
  ErrorData? get errorData;
  @override
  Option<CodeModelResponse>? get codeModelResponse;
  @override
  @JsonKey(ignore: true)
  _$$PhoneAuthStateImplCopyWith<_$PhoneAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}