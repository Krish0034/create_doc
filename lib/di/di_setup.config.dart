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
import '../auth/data/repositories/impl/signin_repository_impl.dart' as _i13;
import '../auth/data/repositories/impl/signup_repository_impl.dart' as _i15;
import '../auth/data/repositories/impl/user_name_repository_impl.dart' as _i21;
import '../auth/data/repositories/send_otp_repository.dart' as _i8;
import '../auth/data/repositories/signin_repository.dart' as _i12;
import '../auth/data/repositories/signup_repository.dart' as _i14;
import '../auth/data/repositories/user_name_repository.dart' as _i20;
import '../auth/data/services/impl/location_services_impl.dart' as _i7;
import '../auth/data/services/impl/send_otp_services_impl.dart' as _i11;
import '../auth/data/services/impl/signin_services_impl.dart' as _i19;
import '../auth/data/services/impl/signup_services_impl.dart' as _i17;
import '../auth/data/services/impl/user_name_services_impl.dart' as _i23;
import '../auth/data/services/location_services.dart' as _i6;
import '../auth/data/services/send_otp_services.dart' as _i10;
import '../auth/data/services/signin_services.dart' as _i18;
import '../auth/data/services/signup_services.dart' as _i16;
import '../auth/data/services/user_name_services.dart' as _i22;
import '../auth/domain/impl/location_access_services_impl.dart' as _i25;
import '../auth/domain/impl/send_otp_access_services_impl.dart' as _i27;
import '../auth/domain/impl/signup_access_services_impl.dart' as _i29;
import '../auth/domain/impl/singin_access_services_impl.dart' as _i31;
import '../auth/domain/impl/user_name_access_services_impl.dart' as _i33;
import '../auth/domain/location_access_services.dart' as _i24;
import '../auth/domain/send_otp_access_services.dart' as _i26;
import '../auth/domain/signin_access_services.dart' as _i30;
import '../auth/domain/signup_access_services.dart' as _i28;
import '../auth/domain/user_name_access_services.dart' as _i32;
import '../auth/presentaion/bloc/email_signin_bloc/email_signin_bloc.dart'
    as _i35;
import '../auth/presentaion/bloc/email_signup_bloc/email_signup_bloc.dart'
    as _i36;
import '../auth/presentaion/bloc/google_map_bloc/google_map_bloc.dart' as _i37;
import '../auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart' as _i38;
import '../auth/presentaion/bloc/user_name_bloc/user_name_bloc.dart' as _i34;
import '../util/api_urls.dart' as _i4;
import 'dio_setup.dart' as _i39;

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
  gh.factory<_i12.SignInRepository>(() => _i13.SignInRepositoryImpl());
  gh.factory<_i14.SignUpRepository>(() => _i15.SignUpRepositoryImpl());
  gh.factory<_i16.SignUpServices>(
      () => _i17.SignUpServicesImpl(gh<_i14.SignUpRepository>()));
  gh.factory<_i18.SingInServices>(
      () => _i19.SingInAccessServicesImpl(gh<_i12.SignInRepository>()));
  gh.factory<_i20.UserNameRepository>(() => _i21.UserNameRepositoryImpl());
  gh.factory<_i22.UserNameServices>(
      () => _i23.UserNameServicesImpl(gh<_i20.UserNameRepository>()));
  gh.factory<_i24.LocationAccessServices>(
      () => _i25.LocationAccessServicesImpl(gh<_i6.LocationServices>()));
  gh.factory<_i26.SendOtpAccessServices>(
      () => _i27.SendOtpAccessServicesImpl(gh<_i10.SendOtpServices>()));
  gh.factory<_i28.SignUpAccessServices>(
      () => _i29.SignUpAccessServicesImpl(gh<_i16.SignUpServices>()));
  gh.factory<_i30.SingInAccessServices>(
      () => _i31.SingInAccessServicesImpl(gh<_i18.SingInServices>()));
  gh.factory<_i32.UserNameAccessServices>(
      () => _i33.UserNameAccessServicesImpl(gh<_i22.UserNameServices>()));
  gh.factory<_i34.UserNameBloc>(
      () => _i34.UserNameBloc(gh<_i32.UserNameAccessServices>()));
  gh.factory<_i35.EmailSignInBloc>(
      () => _i35.EmailSignInBloc(gh<_i30.SingInAccessServices>()));
  gh.factory<_i36.EmailSignUpBloc>(
      () => _i36.EmailSignUpBloc(gh<_i28.SignUpAccessServices>()));
  gh.factory<_i37.GoogleMapBloc>(
      () => _i37.GoogleMapBloc(gh<_i24.LocationAccessServices>()));
  gh.factory<_i38.PhoneAuthBloc>(
      () => _i38.PhoneAuthBloc(gh<_i26.SendOtpAccessServices>()));
  return getIt;
}

class _$AppModule extends _i39.AppModule {}
