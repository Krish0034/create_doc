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

import '../auth/data/repositories/get_user_data_repository.dart' as _i5;
import '../auth/data/repositories/impl/get_user_data_repository_impl.dart'
    as _i6;
import '../auth/data/repositories/impl/location_repository_impl.dart' as _i7;
import '../auth/data/repositories/impl/send_otp_repository_impl.dart' as _i11;
import '../auth/data/repositories/impl/signin_repository_impl.dart' as _i15;
import '../auth/data/repositories/impl/signup_repository_impl.dart' as _i17;
import '../auth/data/repositories/impl/user_name_repository_impl.dart' as _i23;
import '../auth/data/repositories/send_otp_repository.dart' as _i10;
import '../auth/data/repositories/signin_repository.dart' as _i14;
import '../auth/data/repositories/signup_repository.dart' as _i16;
import '../auth/data/repositories/user_name_repository.dart' as _i22;
import '../auth/data/services/get_user_data_services.dart' as _i26;
import '../auth/data/services/impl/get_user_data_services_ipml.dart' as _i27;
import '../auth/data/services/impl/location_services_impl.dart' as _i9;
import '../auth/data/services/impl/send_otp_services_impl.dart' as _i13;
import '../auth/data/services/impl/signin_services_impl.dart' as _i21;
import '../auth/data/services/impl/signup_services_impl.dart' as _i19;
import '../auth/data/services/impl/user_name_services_impl.dart' as _i25;
import '../auth/data/services/location_services.dart' as _i8;
import '../auth/data/services/send_otp_services.dart' as _i12;
import '../auth/data/services/signin_services.dart' as _i20;
import '../auth/data/services/signup_services.dart' as _i18;
import '../auth/data/services/user_name_services.dart' as _i24;
import '../auth/domain/get_user_data_access_services.dart' as _i41;
import '../auth/domain/impl/get_user_data_access_services_impl.dart' as _i42;
import '../auth/domain/impl/location_access_services_impl.dart' as _i29;
import '../auth/domain/impl/send_otp_access_services_impl.dart' as _i31;
import '../auth/domain/impl/signup_access_services_impl.dart' as _i33;
import '../auth/domain/impl/singin_access_services_impl.dart' as _i35;
import '../auth/domain/impl/user_name_access_services_impl.dart' as _i37;
import '../auth/domain/location_access_services.dart' as _i28;
import '../auth/domain/send_otp_access_services.dart' as _i30;
import '../auth/domain/signin_access_services.dart' as _i34;
import '../auth/domain/signup_access_services.dart' as _i32;
import '../auth/domain/user_name_access_services.dart' as _i36;
import '../auth/presentaion/bloc/email_signin_bloc/email_signin_bloc.dart'
    as _i39;
import '../auth/presentaion/bloc/email_signup_bloc/email_signup_bloc.dart'
    as _i40;
import '../auth/presentaion/bloc/get_user_data_bloc/get_user_data_bloc.dart'
    as _i43;
import '../auth/presentaion/bloc/google_map_bloc/google_map_bloc.dart' as _i44;
import '../auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart' as _i45;
import '../auth/presentaion/bloc/user_name_bloc/user_name_bloc.dart' as _i38;
import '../util/api_urls.dart' as _i4;
import 'dio_setup.dart' as _i46;

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
  gh.factory<_i5.GetUserDataRepository>(() => _i6.GetUserDataRepositoryImpl());
  gh.factory<_i7.LocationRepositoryImpl>(
      () => _i7.LocationRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i8.LocationServices>(
      () => _i9.LocationServicesImpl(gh<_i7.LocationRepositoryImpl>()));
  gh.factory<_i10.SendOtpRepository>(() => _i11.SendOtpRepositoryImpl());
  gh.factory<_i12.SendOtpServices>(
      () => _i13.SendOtpServicesImpl(gh<_i10.SendOtpRepository>()));
  gh.factory<_i14.SignInRepository>(() => _i15.SignInRepositoryImpl());
  gh.factory<_i16.SignUpRepository>(() => _i17.SignUpRepositoryImpl());
  gh.factory<_i18.SignUpServices>(
      () => _i19.SignUpServicesImpl(gh<_i16.SignUpRepository>()));
  gh.factory<_i20.SingInServices>(
      () => _i21.SingInAccessServicesImpl(gh<_i14.SignInRepository>()));
  gh.factory<_i22.UserNameRepository>(() => _i23.UserNameRepositoryImpl());
  gh.factory<_i24.UserNameServices>(
      () => _i25.UserNameServicesImpl(gh<_i22.UserNameRepository>()));
  gh.factory<_i26.GetUserDataServices>(
      () => _i27.GetUserDataServicesImpl(gh<_i14.SignInRepository>()));
  gh.factory<_i28.LocationAccessServices>(
      () => _i29.LocationAccessServicesImpl(gh<_i8.LocationServices>()));
  gh.factory<_i30.SendOtpAccessServices>(
      () => _i31.SendOtpAccessServicesImpl(gh<_i12.SendOtpServices>()));
  gh.factory<_i32.SignUpAccessServices>(
      () => _i33.SignUpAccessServicesImpl(gh<_i18.SignUpServices>()));
  gh.factory<_i34.SingInAccessServices>(
      () => _i35.SingInAccessServicesImpl(gh<_i20.SingInServices>()));
  gh.factory<_i36.UserNameAccessServices>(
      () => _i37.UserNameAccessServicesImpl(gh<_i24.UserNameServices>()));
  gh.factory<_i38.UserNameBloc>(
      () => _i38.UserNameBloc(gh<_i36.UserNameAccessServices>()));
  gh.factory<_i39.EmailSignInBloc>(
      () => _i39.EmailSignInBloc(gh<_i34.SingInAccessServices>()));
  gh.factory<_i40.EmailSignUpBloc>(
      () => _i40.EmailSignUpBloc(gh<_i32.SignUpAccessServices>()));
  gh.factory<_i41.GetUserDataAccessServices>(
      () => _i42.GetUserDataAccessServicesImpl(gh<_i26.GetUserDataServices>()));
  gh.factory<_i43.GetUserDataBloc>(
      () => _i43.GetUserDataBloc(gh<_i41.GetUserDataAccessServices>()));
  gh.factory<_i44.GoogleMapBloc>(
      () => _i44.GoogleMapBloc(gh<_i28.LocationAccessServices>()));
  gh.factory<_i45.PhoneAuthBloc>(
      () => _i45.PhoneAuthBloc(gh<_i30.SendOtpAccessServices>()));
  return getIt;
}

class _$AppModule extends _i46.AppModule {}
