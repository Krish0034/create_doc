import 'package:flutter/foundation.dart';

class Logger {
  static const bool _isLogEnable = true;

  static void data(dynamic data) {
    if (_isLogEnable) {
      if (kDebugMode) {
        print(data);
      }
    }
  }
}
