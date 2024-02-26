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

import '../auth/data/repositories/impl/send_otp_repository_impl.dart' as _i8;
import '../auth/data/repositories/impl/signup_repository_impl.dart' as _i12;
import '../auth/data/repositories/impl/user_name_repository_impl.dart' as _i16;
import '../auth/data/repositories/send_otp_repository.dart' as _i7;
import '../auth/data/repositories/signup_repository.dart' as _i11;
import '../auth/data/repositories/user_name_repository.dart' as _i15;
import '../auth/data/services/impl/send_otp_services_impl.dart' as _i10;
import '../auth/data/services/impl/signup_services_impl.dart' as _i14;
import '../auth/data/services/impl/user_name_services_impl.dart' as _i18;
import '../auth/data/services/send_otp_services.dart' as _i9;
import '../auth/data/services/signup_services.dart' as _i13;
import '../auth/data/services/user_name_services.dart' as _i17;
import '../auth/domain/impl/send_otp_access_services_impl.dart' as _i6;
import '../auth/domain/impl/signup_access_services_impl.dart' as _i21;
import '../auth/domain/impl/user_name_access_services_impl.dart' as _i24;
import '../auth/domain/send_otp_access_services.dart' as _i5;
import '../auth/domain/signup_access_services.dart' as _i20;
import '../auth/domain/user_name_access_services.dart' as _i23;
import '../auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart' as _i19;
import '../auth/presentaion/bloc/signup_bloc/signup_bloc.dart' as _i22;
import '../auth/presentaion/bloc/user_name_bloc/user_name_bloc.dart' as _i25;
import '../util/api_urls.dart' as _i4;
import 'dio_setup.dart' as _i26;

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
  gh.factory<_i5.SendOtpAccessServices>(() => _i6.SendOtpAccessServicesImpl());
  gh.factory<_i7.SendOtpRepository>(() => _i8.SendOtpRepositoryImpl());
  gh.factory<_i9.SendOtpServices>(() => _i10.SendOtpServicesImpl());
  gh.factory<_i11.SignUpRepository>(() => _i12.SignUpRepositoryImpl());
  gh.factory<_i13.SignUpServices>(
      () => _i14.SignUpServicesImpl(gh<_i11.SignUpRepository>()));
  gh.factory<_i15.UserNameRepository>(() => _i16.UserNameRepositoryImpl());
  gh.factory<_i17.UserNameServices>(
      () => _i18.UserNameServicesImpl(gh<_i15.UserNameRepository>()));
  gh.factory<_i19.PhoneAuthBloc>(
      () => _i19.PhoneAuthBloc(gh<_i5.SendOtpAccessServices>()));
  gh.factory<_i20.SignUpAccessServices>(
      () => _i21.SignUpAccessServicesImpl(gh<_i13.SignUpServices>()));
  gh.factory<_i22.SignUpBloc>(
      () => _i22.SignUpBloc(gh<_i20.SignUpAccessServices>()));
  gh.factory<_i23.UserNameAccessServices>(
      () => _i24.UserNameAccessServicesImpl(gh<_i17.UserNameServices>()));
  gh.factory<_i25.UserNameBloc>(
      () => _i25.UserNameBloc(gh<_i23.UserNameAccessServices>()));
  return getIt;
}

class _$AppModule extends _i26.AppModule {}
