import 'dart:async';
import '../../../model/user_data.dart';
import '../../../../core/error_data.dart';
import '../../../../util/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../util/auth_type.dart';
import '../../../domain/user_name_access_services.dart';

part 'user_name_event.dart';

part 'user_name_state.dart';

part 'user_name_bloc.freezed.dart';

@injectable
class UserNameBloc extends Bloc<UserNameEvent, UserNameState> {
  final UserNameAccessServices _userNameAccessServices;

  UserNameBloc(this._userNameAccessServices) : super(UserNameState.initial()) {
    on<UserNameEvent>((event, emit) async {
      await event.when(
        userExist: (String userName, AuthType authType) =>
            _userExist(userName, authType, emit),
      );
    });
  }

  Future<dynamic> _userExist(
      String userName, AuthType authType, Emitter<UserNameState> emit) async {
    final result = await _userNameAccessServices.userExist(
        userName: userName, authType: authType);
    Logger.data("user name is exist or not $result");

    await result.fold((ErrorData errorData) async {
      emit(state.copyWith(userName: false, userData: none()));
    }, (UserData userData) async {
      emit(state.copyWith(userName: true, userData: optionOf(userData)));
    });
  }
}
