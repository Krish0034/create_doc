// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailSignUpEvent {
  UserData get userData => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  PhoneAuthProviderModel? get phoneAuthProviderModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)
        createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUser value) createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUser value)? createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUser value)? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailSignUpEventCopyWith<EmailSignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignUpEventCopyWith<$Res> {
  factory $EmailSignUpEventCopyWith(
          EmailSignUpEvent value, $Res Function(EmailSignUpEvent) then) =
      _$EmailSignUpEventCopyWithImpl<$Res, EmailSignUpEvent>;
  @useResult
  $Res call(
      {UserData userData,
      AuthType authType,
      PhoneAuthProviderModel? phoneAuthProviderModel});
}

/// @nodoc
class _$EmailSignUpEventCopyWithImpl<$Res, $Val extends EmailSignUpEvent>
    implements $EmailSignUpEventCopyWith<$Res> {
  _$EmailSignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? authType = null,
    Object? phoneAuthProviderModel = freezed,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
      phoneAuthProviderModel: freezed == phoneAuthProviderModel
          ? _value.phoneAuthProviderModel
          : phoneAuthProviderModel // ignore: cast_nullable_to_non_nullable
              as PhoneAuthProviderModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res>
    implements $EmailSignUpEventCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData userData,
      AuthType authType,
      PhoneAuthProviderModel? phoneAuthProviderModel});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$EmailSignUpEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? authType = null,
    Object? phoneAuthProviderModel = freezed,
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
      phoneAuthProviderModel: freezed == phoneAuthProviderModel
          ? _value.phoneAuthProviderModel
          : phoneAuthProviderModel // ignore: cast_nullable_to_non_nullable
              as PhoneAuthProviderModel?,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements CreateUser {
  const _$CreateUserImpl(
      {required this.userData,
      required this.authType,
      this.phoneAuthProviderModel});

  @override
  final UserData userData;
  @override
  final AuthType authType;
  @override
  final PhoneAuthProviderModel? phoneAuthProviderModel;

  @override
  String toString() {
    return 'EmailSignUpEvent.createUser(userData: $userData, authType: $authType, phoneAuthProviderModel: $phoneAuthProviderModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.authType, authType) ||
                other.authType == authType) &&
            (identical(other.phoneAuthProviderModel, phoneAuthProviderModel) ||
                other.phoneAuthProviderModel == phoneAuthProviderModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userData, authType, phoneAuthProviderModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)
        createUser,
  }) {
    return createUser(userData, authType, phoneAuthProviderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        createUser,
  }) {
    return createUser?.call(userData, authType, phoneAuthProviderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(userData, authType, phoneAuthProviderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUser value) createUser,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUser value)? createUser,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUser implements EmailSignUpEvent {
  const factory CreateUser(
      {required final UserData userData,
      required final AuthType authType,
      final PhoneAuthProviderModel? phoneAuthProviderModel}) = _$CreateUserImpl;

  @override
  UserData get userData;
  @override
  AuthType get authType;
  @override
  PhoneAuthProviderModel? get phoneAuthProviderModel;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailSignUpState {
  Option<UserData> get userData => throw _privateConstructorUsedError;
  ErrorData? get errorData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailSignUpStateCopyWith<EmailSignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignUpStateCopyWith<$Res> {
  factory $EmailSignUpStateCopyWith(
          EmailSignUpState value, $Res Function(EmailSignUpState) then) =
      _$EmailSignUpStateCopyWithImpl<$Res, EmailSignUpState>;
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class _$EmailSignUpStateCopyWithImpl<$Res, $Val extends EmailSignUpState>
    implements $EmailSignUpStateCopyWith<$Res> {
  _$EmailSignUpStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $EmailSignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  @override
  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$EmailSignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_$SignUpStateImpl(
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

class _$SignUpStateImpl implements _SignUpState {
  _$SignUpStateImpl({required this.userData, this.errorData});

  @override
  final Option<UserData> userData;
  @override
  final ErrorData? errorData;

  @override
  String toString() {
    return 'EmailSignUpState(userData: $userData, errorData: $errorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
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
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements EmailSignUpState {
  factory _SignUpState(
      {required final Option<UserData> userData,
      final ErrorData? errorData}) = _$SignUpStateImpl;

  @override
  Option<UserData> get userData;
  @override
  ErrorData? get errorData;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
