import 'dart:async';
import 'package:create_doc/auth/model/phone_auth_provider_model.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import '../../../domain/signup_access_services.dart';
import '../../../model/user_data.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpAccessServices _signUpAccessServices;

  SignUpBloc(this._signUpAccessServices) : super(SignUpState.initial()) {
    on<SignUpEvent>((SignUpEvent event, Emitter<SignUpState> emit) async {
      await event.when(
          createUser: (UserData userData, AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel) =>
              createUser(emit, userData, authType,phoneAuthProviderModel));
    });
  }

  Future<dynamic> createUser(
      Emitter<SignUpState> emit, UserData userData, AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel) async {
    Logger.data("Create User Function in bloc ${userData.toJson()}");
    Logger.data("Create User Function in bloc 1 $authType");
    Logger.data("Create User Function in bloc 1 ${phoneAuthProviderModel?.toJson()}");
    Logger.data("Create User Function in bloc 1 ${phoneAuthProviderModel?.codeModelResponse?.toJson()}");
    Logger.data("Create User Function in bloc 1 ${phoneAuthProviderModel?.codeModelResponse?.verificationId}");
    final Either<ErrorData, UserData> result = await _signUpAccessServices.createUser(userData: userData, authType: authType,phoneAuthProviderModel: phoneAuthProviderModel);
    Logger.data("Result of user result is: $result");
    emit(
      result.fold(
        (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
        (UserData userData) => state.copyWith(userData: optionOf(userData)),
      ),
    );
  }
}
