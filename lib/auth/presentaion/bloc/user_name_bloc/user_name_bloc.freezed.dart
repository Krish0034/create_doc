// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserNameEvent {
  String get userName => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, AuthType authType) userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, AuthType authType)? userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, AuthType authType)? userExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserExist value) userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserExist value)? userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserExist value)? userExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameEventCopyWith<UserNameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameEventCopyWith<$Res> {
  factory $UserNameEventCopyWith(
          UserNameEvent value, $Res Function(UserNameEvent) then) =
      _$UserNameEventCopyWithImpl<$Res, UserNameEvent>;
  @useResult
  $Res call({String userName, AuthType authType});
}

/// @nodoc
class _$UserNameEventCopyWithImpl<$Res, $Val extends UserNameEvent>
    implements $UserNameEventCopyWith<$Res> {
  _$UserNameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? authType = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserExistImplCopyWith<$Res>
    implements $UserNameEventCopyWith<$Res> {
  factory _$$UserExistImplCopyWith(
          _$UserExistImpl value, $Res Function(_$UserExistImpl) then) =
      __$$UserExistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, AuthType authType});
}

/// @nodoc
class __$$UserExistImplCopyWithImpl<$Res>
    extends _$UserNameEventCopyWithImpl<$Res, _$UserExistImpl>
    implements _$$UserExistImplCopyWith<$Res> {
  __$$UserExistImplCopyWithImpl(
      _$UserExistImpl _value, $Res Function(_$UserExistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? authType = null,
  }) {
    return _then(_$UserExistImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      authType: null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$UserExistImpl implements UserExist {
  const _$UserExistImpl({required this.userName, required this.authType});

  @override
  final String userName;
  @override
  final AuthType authType;

  @override
  String toString() {
    return 'UserNameEvent.userExist(userName: $userName, authType: $authType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExistImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.authType, authType) ||
                other.authType == authType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, authType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistImplCopyWith<_$UserExistImpl> get copyWith =>
      __$$UserExistImplCopyWithImpl<_$UserExistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, AuthType authType) userExist,
  }) {
    return userExist(userName, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, AuthType authType)? userExist,
  }) {
    return userExist?.call(userName, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, AuthType authType)? userExist,
    required TResult orElse(),
  }) {
    if (userExist != null) {
      return userExist(userName, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserExist value) userExist,
  }) {
    return userExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserExist value)? userExist,
  }) {
    return userExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserExist value)? userExist,
    required TResult orElse(),
  }) {
    if (userExist != null) {
      return userExist(this);
    }
    return orElse();
  }
}

abstract class UserExist implements UserNameEvent {
  const factory UserExist(
      {required final String userName,
      required final AuthType authType}) = _$UserExistImpl;

  @override
  String get userName;
  @override
  AuthType get authType;
  @override
  @JsonKey(ignore: true)
  _$$UserExistImplCopyWith<_$UserExistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserNameState {
  bool get userName => throw _privateConstructorUsedError;
  Option<UserData> get userData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameStateCopyWith<UserNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameStateCopyWith<$Res> {
  factory $UserNameStateCopyWith(
          UserNameState value, $Res Function(UserNameState) then) =
      _$UserNameStateCopyWithImpl<$Res, UserNameState>;
  @useResult
  $Res call({bool userName, Option<UserData> userData});
}

/// @nodoc
class _$UserNameStateCopyWithImpl<$Res, $Val extends UserNameState>
    implements $UserNameStateCopyWith<$Res> {
  _$UserNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userData = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as bool,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNameStateImplCopyWith<$Res>
    implements $UserNameStateCopyWith<$Res> {
  factory _$$UserNameStateImplCopyWith(
          _$UserNameStateImpl value, $Res Function(_$UserNameStateImpl) then) =
      __$$UserNameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool userName, Option<UserData> userData});
}

/// @nodoc
class __$$UserNameStateImplCopyWithImpl<$Res>
    extends _$UserNameStateCopyWithImpl<$Res, _$UserNameStateImpl>
    implements _$$UserNameStateImplCopyWith<$Res> {
  __$$UserNameStateImplCopyWithImpl(
      _$UserNameStateImpl _value, $Res Function(_$UserNameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userData = null,
  }) {
    return _then(_$UserNameStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as bool,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>,
    ));
  }
}

/// @nodoc

class _$UserNameStateImpl implements _UserNameState {
  _$UserNameStateImpl({this.userName = false, required this.userData});

  @override
  @JsonKey()
  final bool userName;
  @override
  final Option<UserData> userData;

  @override
  String toString() {
    return 'UserNameState(userName: $userName, userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameStateImplCopyWith<_$UserNameStateImpl> get copyWith =>
      __$$UserNameStateImplCopyWithImpl<_$UserNameStateImpl>(this, _$identity);
}

abstract class _UserNameState implements UserNameState {
  factory _UserNameState(
      {final bool userName,
      required final Option<UserData> userData}) = _$UserNameStateImpl;

  @override
  bool get userName;
  @override
  Option<UserData> get userData;
  @override
  @JsonKey(ignore: true)
  _$$UserNameStateImplCopyWith<_$UserNameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
