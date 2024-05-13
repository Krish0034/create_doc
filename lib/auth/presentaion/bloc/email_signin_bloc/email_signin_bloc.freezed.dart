// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailSignInEvent {
  String get userEmail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userEmail, String password, AuthType authType)
        userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userEmail, String password, AuthType authType)?
        userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userEmail, String password, AuthType authType)?
        userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLogin value) userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLogin value)? userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLogin value)? userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailSignInEventCopyWith<EmailSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignInEventCopyWith<$Res> {
  factory $EmailSignInEventCopyWith(
          EmailSignInEvent value, $Res Function(EmailSignInEvent) then) =
      _$EmailSignInEventCopyWithImpl<$Res, EmailSignInEvent>;
  @useResult
  $Res call({String userEmail, String password, AuthType authType});
}

/// @nodoc
class _$EmailSignInEventCopyWithImpl<$Res, $Val extends EmailSignInEvent>
    implements $EmailSignInEventCopyWith<$Res> {
  _$EmailSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? password = null,
    Object? authType = null,
  }) {
    return _then(_value.copyWith(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginImplCopyWith<$Res>
    implements $EmailSignInEventCopyWith<$Res> {
  factory _$$UserLoginImplCopyWith(
          _$UserLoginImpl value, $Res Function(_$UserLoginImpl) then) =
      __$$UserLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail, String password, AuthType authType});
}

/// @nodoc
class __$$UserLoginImplCopyWithImpl<$Res>
    extends _$EmailSignInEventCopyWithImpl<$Res, _$UserLoginImpl>
    implements _$$UserLoginImplCopyWith<$Res> {
  __$$UserLoginImplCopyWithImpl(
      _$UserLoginImpl _value, $Res Function(_$UserLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? password = null,
    Object? authType = null,
  }) {
    return _then(_$UserLoginImpl(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$UserLoginImpl implements UserLogin {
  const _$UserLoginImpl(
      {required this.userEmail,
      required this.password,
      required this.authType});

  @override
  final String userEmail;
  @override
  final String password;
  @override
  final AuthType authType;

  @override
  String toString() {
    return 'EmailSignInEvent.userLogin(userEmail: $userEmail, password: $password, authType: $authType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginImpl &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.authType, authType) ||
                other.authType == authType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEmail, password, authType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      __$$UserLoginImplCopyWithImpl<_$UserLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userEmail, String password, AuthType authType)
        userLogin,
  }) {
    return userLogin(userEmail, password, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userEmail, String password, AuthType authType)?
        userLogin,
  }) {
    return userLogin?.call(userEmail, password, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userEmail, String password, AuthType authType)?
        userLogin,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(userEmail, password, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLogin value) userLogin,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLogin value)? userLogin,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLogin value)? userLogin,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class UserLogin implements EmailSignInEvent {
  const factory UserLogin(
      {required final String userEmail,
      required final String password,
      required final AuthType authType}) = _$UserLoginImpl;

  @override
  String get userEmail;
  @override
  String get password;
  @override
  AuthType get authType;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailSignInState {
  Option<UserData> get userData => throw _privateConstructorUsedError;
  ErrorData? get errorData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailSignInStateCopyWith<EmailSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignInStateCopyWith<$Res> {
  factory $EmailSignInStateCopyWith(
          EmailSignInState value, $Res Function(EmailSignInState) then) =
      _$EmailSignInStateCopyWithImpl<$Res, EmailSignInState>;
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class _$EmailSignInStateCopyWithImpl<$Res, $Val extends EmailSignInState>
    implements $EmailSignInStateCopyWith<$Res> {
  _$EmailSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>,
      errorData: freezed == errorData
          ? _value.errorData
          : errorData // ignore: cast_nullable_to_non_nullable
              as ErrorData?,
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
abstract class _$$EmailSignInStateImplCopyWith<$Res>
    implements $EmailSignInStateCopyWith<$Res> {
  factory _$$EmailSignInStateImplCopyWith(_$EmailSignInStateImpl value,
          $Res Function(_$EmailSignInStateImpl) then) =
      __$$EmailSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  @override
  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class __$$EmailSignInStateImplCopyWithImpl<$Res>
    extends _$EmailSignInStateCopyWithImpl<$Res, _$EmailSignInStateImpl>
    implements _$$EmailSignInStateImplCopyWith<$Res> {
  __$$EmailSignInStateImplCopyWithImpl(_$EmailSignInStateImpl _value,
      $Res Function(_$EmailSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_$EmailSignInStateImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>,
      errorData: freezed == errorData
          ? _value.errorData
          : errorData // ignore: cast_nullable_to_non_nullable
              as ErrorData?,
    ));
  }
}

/// @nodoc

class _$EmailSignInStateImpl implements _EmailSignInState {
  _$EmailSignInStateImpl({required this.userData, this.errorData});

  @override
  final Option<UserData> userData;
  @override
  final ErrorData? errorData;

  @override
  String toString() {
    return 'EmailSignInState(userData: $userData, errorData: $errorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailSignInStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.errorData, errorData) ||
                other.errorData == errorData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, errorData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailSignInStateImplCopyWith<_$EmailSignInStateImpl> get copyWith =>
      __$$EmailSignInStateImplCopyWithImpl<_$EmailSignInStateImpl>(
          this, _$identity);
}

abstract class _EmailSignInState implements EmailSignInState {
  factory _EmailSignInState(
      {required final Option<UserData> userData,
      final ErrorData? errorData}) = _$EmailSignInStateImpl;

  @override
  Option<UserData> get userData;
  @override
  ErrorData? get errorData;
  @override
  @JsonKey(ignore: true)
  _$$EmailSignInStateImplCopyWith<_$EmailSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
