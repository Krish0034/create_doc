import 'package:create_doc/util/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UtilFunction
{
  bool checkEmailVerification()
  {
    bool isEmailVerified=false;
    Logger.data("user are not verified:  ${isEmailVerified}");
    FirebaseAuth.instance.currentUser?.reload();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    Logger.data("user are verified:  ${isEmailVerified}");
    return isEmailVerified;
  }

}