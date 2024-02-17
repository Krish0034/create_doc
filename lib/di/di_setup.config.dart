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

import '../auth/data/repositories/impl/signup_repository_impl.dart' as _i6;
import '../auth/data/repositories/signup_repository.dart' as _i5;
import '../auth/data/services/impl/signup_services_impl.dart' as _i8;
import '../auth/data/services/signup_services.dart' as _i7;
import '../auth/domain/impl/signup_access_services_impl.dart' as _i10;
import '../auth/domain/signup_access_services.dart' as _i9;
import '../auth/presentaion/bloc/signup_bloc/signup_bloc.dart' as _i11;
import '../util/api_urls.dart' as _i4;
import 'dio_setup.dart' as _i12;

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
  gh.factory<_i5.SignUpRepository>(() => _i6.SignUpRepositoryImpl());
  gh.factory<_i7.SignUpServices>(
      () => _i8.SignUpServicesImpl(gh<_i5.SignUpRepository>()));
  gh.factory<_i9.SignUpAccessServices>(
      () => _i10.SignUpAccessServicesImpl(gh<_i7.SignUpServices>()));
  gh.factory<_i11.SignUpBloc>(
      () => _i11.SignUpBloc(gh<_i9.SignUpAccessServices>()));
  return getIt;
}

class _$AppModule extends _i12.AppModule {}
