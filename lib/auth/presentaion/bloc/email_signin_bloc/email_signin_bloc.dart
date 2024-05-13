import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/logger.dart';
import '../../../domain/signin_access_services.dart';
import '../../../model/user_data.dart';

part 'email_signin_event.dart';
part 'email_signin_state.dart';
part 'email_signin_bloc.freezed.dart';

@injectable
class EmailSignInBloc extends Bloc<EmailSignInEvent, EmailSignInState> {
 final SingInAccessServices _singInAccessServices;

  EmailSignInBloc(this._singInAccessServices) : super(EmailSignInState.initial())
  {
    on<EmailSignInEvent>((EmailSignInEvent event, Emitter<EmailSignInState> emit) async {
      await event.when(
          userLogin: (String userEmail,String password,AuthType authType) =>
              userLogin(emit, userEmail,password,authType));
    });
  }

  Future<dynamic> userLogin(Emitter<EmailSignInState> emit, String userEmail,String password,AuthType authType)async
  {
    final Either<ErrorData, UserData> result = await _singInAccessServices.userLogin(userEmail: userEmail, password: password, authType: authType);
    Logger.data("Result of user result is: $result");
    emit(
      result.fold(
            (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
            (UserData userData) => state.copyWith(userData: optionOf(userData)),
      ),
    );
  }
}
