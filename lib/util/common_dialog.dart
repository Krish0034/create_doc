import 'package:flutter/material.dart';


import 'logger.dart';

class CommonDialog
{

  static BuildContext? _context;

  static void init(BuildContext context) {
    Logger.data("that call init dialog");
    _context = context;
  }

 static Future<dynamic>? sendEmailVerificationDialog( BuildContext context) {
   Logger.data("that call sendEmailVerificationDialog dialog");
   if (_context == null) {
     throw Exception('Context has not been initialized');
   }
    return showDialog(
        context: _context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Done'),
            content: const Text('Add Success'),
            actions: <Widget>[
              GestureDetector(
                child: const Text('Ok'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
    );
  }
}