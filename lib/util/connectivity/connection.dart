import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../logger.dart';

class Connection
{
  static Future<bool> connectivity() async
  {
    bool result = await InternetConnectionChecker().hasConnection;
    if(result == true) {
      Logger.data("Internet is connected");
      return true;
    } else {
      Logger.data("Internet is not connected");
      return false;
    }
  }

}

