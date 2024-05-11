// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchLocation,
    required TResult Function(AddressModel addressModel) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchLocation,
    TResult? Function(AddressModel addressModel)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchLocation,
    TResult Function(AddressModel addressModel)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLocation value) searchLocation,
    required TResult Function(SaveLocation value) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLocation value)? searchLocation,
    TResult? Function(SaveLocation value)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLocation value)? searchLocation,
    TResult Function(SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapEventCopyWith<$Res> {
  factory $GoogleMapEventCopyWith(
          GoogleMapEvent value, $Res Function(GoogleMapEvent) then) =
      _$GoogleMapEventCopyWithImpl<$Res, GoogleMapEvent>;
}

/// @nodoc
class _$GoogleMapEventCopyWithImpl<$Res, $Val extends GoogleMapEvent>
    implements $GoogleMapEventCopyWith<$Res> {
  _$GoogleMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchLocationImplCopyWith<$Res> {
  factory _$$SearchLocationImplCopyWith(_$SearchLocationImpl value,
          $Res Function(_$SearchLocationImpl) then) =
      __$$SearchLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchLocationImplCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res, _$SearchLocationImpl>
    implements _$$SearchLocationImplCopyWith<$Res> {
  __$$SearchLocationImplCopyWithImpl(
      _$SearchLocationImpl _value, $Res Function(_$SearchLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchLocationImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocationImpl implements SearchLocation {
  const _$SearchLocationImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'GoogleMapEvent.searchLocation(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      __$$SearchLocationImplCopyWithImpl<_$SearchLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchLocation,
    required TResult Function(AddressModel addressModel) saveLocation,
  }) {
    return searchLocation(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchLocation,
    TResult? Function(AddressModel addressModel)? saveLocation,
  }) {
    return searchLocation?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchLocation,
    TResult Function(AddressModel addressModel)? saveLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLocation value) searchLocation,
    required TResult Function(SaveLocation value) saveLocation,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLocation value)? searchLocation,
    TResult? Function(SaveLocation value)? saveLocation,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLocation value)? searchLocation,
    TResult Function(SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class SearchLocation implements GoogleMapEvent {
  const factory SearchLocation({required final String searchQuery}) =
      _$SearchLocationImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveLocationImplCopyWith<$Res> {
  factory _$$SaveLocationImplCopyWith(
          _$SaveLocationImpl value, $Res Function(_$SaveLocationImpl) then) =
      __$$SaveLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel addressModel});
}

/// @nodoc
class __$$SaveLocationImplCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res, _$SaveLocationImpl>
    implements _$$SaveLocationImplCopyWith<$Res> {
  __$$SaveLocationImplCopyWithImpl(
      _$SaveLocationImpl _value, $Res Function(_$SaveLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
  }) {
    return _then(_$SaveLocationImpl(
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$SaveLocationImpl implements SaveLocation {
  const _$SaveLocationImpl({required this.addressModel});

  @override
  final AddressModel addressModel;

  @override
  String toString() {
    return 'GoogleMapEvent.saveLocation(addressModel: $addressModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveLocationImpl &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveLocationImplCopyWith<_$SaveLocationImpl> get copyWith =>
      __$$SaveLocationImplCopyWithImpl<_$SaveLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchLocation,
    required TResult Function(AddressModel addressModel) saveLocation,
  }) {
    return saveLocation(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchLocation,
    TResult? Function(AddressModel addressModel)? saveLocation,
  }) {
    return saveLocation?.call(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchLocation,
    TResult Function(AddressModel addressModel)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLocation value) searchLocation,
    required TResult Function(SaveLocation value) saveLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLocation value)? searchLocation,
    TResult? Function(SaveLocation value)? saveLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLocation value)? searchLocation,
    TResult Function(SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class SaveLocation implements GoogleMapEvent {
  const factory SaveLocation({required final AddressModel addressModel}) =
      _$SaveLocationImpl;

  AddressModel get addressModel;
  @JsonKey(ignore: true)
  _$$SaveLocationImplCopyWith<_$SaveLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoogleMapState {
  Option<List<AddressModel>> get addressList =>
      throw _privateConstructorUsedError;
  Option<UserData> get userData => throw _privateConstructorUsedError;
  ErrorData? get errorData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapStateCopyWith<GoogleMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapStateCopyWith<$Res> {
  factory $GoogleMapStateCopyWith(
          GoogleMapState value, $Res Function(GoogleMapState) then) =
      _$GoogleMapStateCopyWithImpl<$Res, GoogleMapState>;
  @useResult
  $Res call(
      {Option<List<AddressModel>> addressList,
      Option<UserData> userData,
      ErrorData? errorData});

  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class _$GoogleMapStateCopyWithImpl<$Res, $Val extends GoogleMapState>
    implements $GoogleMapStateCopyWith<$Res> {
  _$GoogleMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_value.copyWith(
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as Option<List<AddressModel>>,
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
abstract class _$$GoogleMapStateImplCopyWith<$Res>
    implements $GoogleMapStateCopyWith<$Res> {
  factory _$$GoogleMapStateImplCopyWith(_$GoogleMapStateImpl value,
          $Res Function(_$GoogleMapStateImpl) then) =
      __$$GoogleMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<List<AddressModel>> addressList,
      Option<UserData> userData,
      ErrorData? errorData});

  @override
  $ErrorDataCopyWith<$Res>? get errorData;
}

/// @nodoc
class __$$GoogleMapStateImplCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res, _$GoogleMapStateImpl>
    implements _$$GoogleMapStateImplCopyWith<$Res> {
  __$$GoogleMapStateImplCopyWithImpl(
      _$GoogleMapStateImpl _value, $Res Function(_$GoogleMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
    Object? userData = null,
    Object? errorData = freezed,
  }) {
    return _then(_$GoogleMapStateImpl(
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as Option<List<AddressModel>>,
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

class _$GoogleMapStateImpl implements _GoogleMapState {
  _$GoogleMapStateImpl(
      {required this.addressList, required this.userData, this.errorData});

  @override
  final Option<List<AddressModel>> addressList;
  @override
  final Option<UserData> userData;
  @override
  final ErrorData? errorData;

  @override
  String toString() {
    return 'GoogleMapState(addressList: $addressList, userData: $userData, errorData: $errorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleMapStateImpl &&
            (identical(other.addressList, addressList) ||
                other.addressList == addressList) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.errorData, errorData) ||
                other.errorData == errorData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addressList, userData, errorData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleMapStateImplCopyWith<_$GoogleMapStateImpl> get copyWith =>
      __$$GoogleMapStateImplCopyWithImpl<_$GoogleMapStateImpl>(
          this, _$identity);
}

abstract class _GoogleMapState implements GoogleMapState {
  factory _GoogleMapState(
      {required final Option<List<AddressModel>> addressList,
      required final Option<UserData> userData,
      final ErrorData? errorData}) = _$GoogleMapStateImpl;

  @override
  Option<List<AddressModel>> get addressList;
  @override
  Option<UserData> get userData;
  @override
  ErrorData? get errorData;
  @override
  @JsonKey(ignore: true)
  _$$GoogleMapStateImplCopyWith<_$GoogleMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
