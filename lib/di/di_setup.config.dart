// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/data/repositories/impl/location_repository_impl.dart' as _i5;
import '../auth/data/repositories/impl/send_otp_repository_impl.dart' as _i9;
import '../auth/data/repositories/impl/signup_repository_impl.dart' as _i13;
import '../auth/data/repositories/impl/user_name_repository_impl.dart' as _i17;
import '../auth/data/repositories/send_otp_repository.dart' as _i8;
import '../auth/data/repositories/signup_repository.dart' as _i12;
import '../auth/data/repositories/user_name_repository.dart' as _i16;
import '../auth/data/services/impl/location_services_impl.dart' as _i7;
import '../auth/data/services/impl/send_otp_services_impl.dart' as _i11;
import '../auth/data/services/impl/signup_services_impl.dart' as _i15;
import '../auth/data/services/impl/user_name_services_impl.dart' as _i19;
import '../auth/data/services/location_services.dart' as _i6;
import '../auth/data/services/send_otp_services.dart' as _i10;
import '../auth/data/services/signup_services.dart' as _i14;
import '../auth/data/services/user_name_services.dart' as _i18;
import '../auth/domain/impl/location_access_services_impl.dart' as _i21;
import '../auth/domain/impl/send_otp_access_services_impl.dart' as _i23;
import '../auth/domain/impl/signup_access_services_impl.dart' as _i25;
import '../auth/domain/impl/user_name_access_services_impl.dart' as _i28;
import '../auth/domain/location_access_services.dart' as _i20;
import '../auth/domain/send_otp_access_services.dart' as _i22;
import '../auth/domain/signup_access_services.dart' as _i24;
import '../auth/domain/user_name_access_services.dart' as _i27;
import '../auth/presentaion/bloc/google_map_bloc/google_map_bloc.dart' as _i30;
import '../auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart' as _i31;
import '../auth/presentaion/bloc/signup_bloc/signup_bloc.dart' as _i26;
import '../auth/presentaion/bloc/user_name_bloc/user_name_bloc.dart' as _i29;
import '../util/api_urls.dart' as _i4;
import 'dio_setup.dart' as _i32;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.Dio>(() => appModule.dio);
  gh.factory<_i4.FireBaseStorage>(() => _i4.FireBaseStorage());
  gh.factory<_i5.LocationRepositoryImpl>(
      () => _i5.LocationRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i6.LocationServices>(
      () => _i7.LocationServicesImpl(gh<_i5.LocationRepositoryImpl>()));
  gh.factory<_i8.SendOtpRepository>(() => _i9.SendOtpRepositoryImpl());
  gh.factory<_i10.SendOtpServices>(
      () => _i11.SendOtpServicesImpl(gh<_i8.SendOtpRepository>()));
  gh.factory<_i12.SignUpRepository>(() => _i13.SignUpRepositoryImpl());
  gh.factory<_i14.SignUpServices>(
      () => _i15.SignUpServicesImpl(gh<_i12.SignUpRepository>()));
  gh.factory<_i16.UserNameRepository>(() => _i17.UserNameRepositoryImpl());
  gh.factory<_i18.UserNameServices>(
      () => _i19.UserNameServicesImpl(gh<_i16.UserNameRepository>()));
  gh.factory<_i20.LocationAccessServices>(
      () => _i21.LocationAccessServicesImpl(gh<_i6.LocationServices>()));
  gh.factory<_i22.SendOtpAccessServices>(
      () => _i23.SendOtpAccessServicesImpl(gh<_i10.SendOtpServices>()));
  gh.factory<_i24.SignUpAccessServices>(
      () => _i25.SignUpAccessServicesImpl(gh<_i14.SignUpServices>()));
  gh.factory<_i26.SignUpBloc>(
      () => _i26.SignUpBloc(gh<_i24.SignUpAccessServices>()));
  gh.factory<_i27.UserNameAccessServices>(
      () => _i28.UserNameAccessServicesImpl(gh<_i18.UserNameServices>()));
  gh.factory<_i29.UserNameBloc>(
      () => _i29.UserNameBloc(gh<_i27.UserNameAccessServices>()));
  gh.factory<_i30.GoogleMapBloc>(
      () => _i30.GoogleMapBloc(gh<_i20.LocationAccessServices>()));
  gh.factory<_i31.PhoneAuthBloc>(
      () => _i31.PhoneAuthBloc(gh<_i22.SendOtpAccessServices>()));
  return getIt;
}

class _$AppModule extends _i32.AppModule {}
