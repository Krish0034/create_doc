
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error_data.dart';
import '../../../../util/auth_type.dart';
import '../../../model/user_data.dart';
import '../../repositories/signin_repository.dart';
import '../signin_services.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import '../../../../util/logger.dart';
import '../../../../util/utility_function.dart';


@Injectable(as: SingInServices)
class SingInAccessServicesImpl extends SingInServices
{
  final SignInRepository _singInRepository;
  SingInAccessServicesImpl(this._singInRepository);
  final _authInstances = FirebaseAuth.instance;
  @override
  Future<Either<ErrorData, UserData>> userLogin({required String userEmail, required String password, required AuthType authType}) async
  {
    UserData? userData;
    try
    {
      if (authType == AuthType.EMAIL) {
        await _authInstances.signInWithEmailAndPassword(
          email: userEmail,
          password: password,
        ).then((value) async {
          final user = value.user;
          if(user!=null)
           {
             userData = await _singInRepository.getUserData(userId:user.uid);
           } 
        });
        Logger.data("after set data is UserData: for ${userData?.toJson()}");
        return right(userData??UserData());
      }
      else {
        return right(UserData());
      }
    }on FirebaseAuthException catch (e) {
      return Left(ErrorData.httpUnknownError("$e"));
    } on DioError catch (exception) {
      Logger.data("DioError Exception is: $exception");
      return Left(UtilFunction().handleDioError(exception));
    } catch (e) {
      Logger.data("Exception is: $e");
      final String error = e.toString();
      return Left(ErrorData.httpUnknownError(error));
    }
  }

}
