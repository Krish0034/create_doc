import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../domain/get_user_data_access_services.dart';
import '../../../model/phone_auth_provider_model.dart';
import '../../../model/user_data.dart';

part 'get_user_data_event.dart';
part 'get_user_data_state.dart';
part 'get_user_data_bloc.freezed.dart';

@injectable
class GetUserDataBloc extends Bloc<GetUserDataEvent, GetUserDataState> {
 final GetUserDataAccessServices _getUserDataAccessServices;
  GetUserDataBloc(this._getUserDataAccessServices) : super(GetUserDataState.initial()) {
    on<GetUserDataEvent>((GetUserDataEvent event, Emitter<GetUserDataState> emit) async {
      await event.when(
          getUserDataByPhone: (String phoneNumber, AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel) =>
              getUserDataByPhone(emit, phoneNumber, authType,phoneAuthProviderModel));
    });
  }

  Future<dynamic> getUserDataByPhone(Emitter<GetUserDataState> emit,String phoneNumber, AuthType authType,PhoneAuthProviderModel? phoneAuthProviderModel) async {
    final Either<ErrorData, UserData> result=await _getUserDataAccessServices.getUserDataByPhone(phoneNumber: phoneNumber, authType: authType,phoneAuthProviderModel: phoneAuthProviderModel);
    emit(
      result.fold(
            (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
            (UserData userData) => state.copyWith(userData: optionOf(userData)),
      ),
    );
  }
}
