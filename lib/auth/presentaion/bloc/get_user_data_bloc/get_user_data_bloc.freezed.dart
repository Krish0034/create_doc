// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserDataEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  PhoneAuthProviderModel? get phoneAuthProviderModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)
        getUserDataByPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        getUserDataByPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        getUserDataByPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataByPhone value) getUserDataByPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataByPhone value)? getUserDataByPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataByPhone value)? getUserDataByPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUserDataEventCopyWith<GetUserDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDataEventCopyWith<$Res> {
  factory $GetUserDataEventCopyWith(
          GetUserDataEvent value, $Res Function(GetUserDataEvent) then) =
      _$GetUserDataEventCopyWithImpl<$Res, GetUserDataEvent>;
  @useResult
  $Res call(
      {String phoneNumber,
      AuthType authType,
      PhoneAuthProviderModel? phoneAuthProviderModel});
}

/// @nodoc
class _$GetUserDataEventCopyWithImpl<$Res, $Val extends GetUserDataEvent>
    implements $GetUserDataEventCopyWith<$Res> {
  _$GetUserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? authType = null,
    Object? phoneAuthProviderModel = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$GetUserDataByPhoneImplCopyWith<$Res>
    implements $GetUserDataEventCopyWith<$Res> {
  factory _$$GetUserDataByPhoneImplCopyWith(_$GetUserDataByPhoneImpl value,
          $Res Function(_$GetUserDataByPhoneImpl) then) =
      __$$GetUserDataByPhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      AuthType authType,
      PhoneAuthProviderModel? phoneAuthProviderModel});
}

/// @nodoc
class __$$GetUserDataByPhoneImplCopyWithImpl<$Res>
    extends _$GetUserDataEventCopyWithImpl<$Res, _$GetUserDataByPhoneImpl>
    implements _$$GetUserDataByPhoneImplCopyWith<$Res> {
  __$$GetUserDataByPhoneImplCopyWithImpl(_$GetUserDataByPhoneImpl _value,
      $Res Function(_$GetUserDataByPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? authType = null,
    Object? phoneAuthProviderModel = freezed,
  }) {
    return _then(_$GetUserDataByPhoneImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GetUserDataByPhoneImpl implements GetUserDataByPhone {
  const _$GetUserDataByPhoneImpl(
      {required this.phoneNumber,
      required this.authType,
      this.phoneAuthProviderModel});

  @override
  final String phoneNumber;
  @override
  final AuthType authType;
  @override
  final PhoneAuthProviderModel? phoneAuthProviderModel;

  @override
  String toString() {
    return 'GetUserDataEvent.getUserDataByPhone(phoneNumber: $phoneNumber, authType: $authType, phoneAuthProviderModel: $phoneAuthProviderModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataByPhoneImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.authType, authType) ||
                other.authType == authType) &&
            (identical(other.phoneAuthProviderModel, phoneAuthProviderModel) ||
                other.phoneAuthProviderModel == phoneAuthProviderModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, authType, phoneAuthProviderModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataByPhoneImplCopyWith<_$GetUserDataByPhoneImpl> get copyWith =>
      __$$GetUserDataByPhoneImplCopyWithImpl<_$GetUserDataByPhoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)
        getUserDataByPhone,
  }) {
    return getUserDataByPhone(phoneNumber, authType, phoneAuthProviderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        getUserDataByPhone,
  }) {
    return getUserDataByPhone?.call(
        phoneNumber, authType, phoneAuthProviderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, AuthType authType,
            PhoneAuthProviderModel? phoneAuthProviderModel)?
        getUserDataByPhone,
    required TResult orElse(),
  }) {
    if (getUserDataByPhone != null) {
      return getUserDataByPhone(phoneNumber, authType, phoneAuthProviderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataByPhone value) getUserDataByPhone,
  }) {
    return getUserDataByPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataByPhone value)? getUserDataByPhone,
  }) {
    return getUserDataByPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataByPhone value)? getUserDataByPhone,
    required TResult orElse(),
  }) {
    if (getUserDataByPhone != null) {
      return getUserDataByPhone(this);
    }
    return orElse();
  }
}

abstract class GetUserDataByPhone implements GetUserDataEvent {
  const factory GetUserDataByPhone(
          {required final String phoneNumber,
          required final AuthType authType,
          final PhoneAuthProviderModel? phoneAuthProviderModel}) =
      _$GetUserDataByPhoneImpl;

  @override
  String get phoneNumber;
  @override
  AuthType get authType;
  @override
  PhoneAuthProviderModel? get phoneAuthProviderModel;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDataByPhoneImplCopyWith<_$GetUserDataByPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetUserDataState {
  Option<UserData> get userData => throw _privateConstructorUsedError;
  ErrorData? get errorData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUserDataStateCopyWith<GetUserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDataStateCopyWith<$Res> {
  factory $GetUserDataStateCopyWith(
          GetUserDataState value, $Res Function(GetUserDataState) then) =
      _$GetUserDataStateCopyWithImpl<$Res, GetUserDataState>;
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class _$GetUserDataStateCopyWithImpl<$Res, $Val extends GetUserDataState>
    implements $GetUserDataStateCopyWith<$Res> {
  _$GetUserDataStateCopyWithImpl(this._value, this._then);

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
abstract class _$$GetUserDataStateImplCopyWith<$Res>
    implements $GetUserDataStateCopyWith<$Res> {
  factory _$$GetUserDataStateImplCopyWith(_$GetUserDataStateImpl value,
          $Res Function(_$GetUserDataStateImpl) then) =
      __$$GetUserDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<UserData> userData, ErrorData? errorData});

  @override
  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class __$$GetUserDataStateImplCopyWithImpl<$Res>
    extends _$GetUserDataStateCopyWithImpl<$Res, _$GetUserDataStateImpl>
    implements _$$GetUserDataStateImplCopyWith<$Res> {
  __$$GetUserDataStateImplCopyWithImpl(_$GetUserDataStateImpl _value,
      $Res Function(_$GetUserDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_$GetUserDataStateImpl(
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

class _$GetUserDataStateImpl implements _GetUserDataState {
  _$GetUserDataStateImpl({required this.userData, this.errorData});

  @override
  final Option<UserData> userData;
  @override
  final ErrorData? errorData;

  @override
  String toString() {
    return 'GetUserDataState(userData: $userData, errorData: $errorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataStateImpl &&
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
  _$$GetUserDataStateImplCopyWith<_$GetUserDataStateImpl> get copyWith =>
      __$$GetUserDataStateImplCopyWithImpl<_$GetUserDataStateImpl>(
          this, _$identity);
}

abstract class _GetUserDataState implements GetUserDataState {
  factory _GetUserDataState(
      {required final Option<UserData> userData,
      final ErrorData? errorData}) = _$GetUserDataStateImpl;

  @override
  Option<UserData> get userData;
  @override
  ErrorData? get errorData;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDataStateImplCopyWith<_$GetUserDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
