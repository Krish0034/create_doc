import 'package:create_doc/util/app_colors.dart';
import 'package:create_doc/util/app_router.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:create_doc/util/logger.dart';
import 'package:create_doc/util/routing_string.dart';
import 'package:create_doc/util/shered_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'di/di_setup.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheredPreferences.init();
  await Firebase.initializeApp();
  configureDependencies();
  Logger.data("Auth type in enum is ${AuthType.EMAIL.toString()}");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context1, child) {
        return MaterialApp(
          title: 'KKDocGenerator',
          navigatorKey: navigatorKey,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whiteColor,
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Colors.deepPurpleAccent,
              foregroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
              ),
            ),
          ),
          initialRoute: RoutingString.splash,
          onGenerateRoute: AppRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
          },
        );
      },
    );
  }
}
