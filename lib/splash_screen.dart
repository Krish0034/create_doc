import 'package:create_doc/util/app_colors.dart';
import 'package:create_doc/util/app_images.dart';
import 'package:create_doc/util/connectivity/connection.dart';
import 'package:create_doc/util/logger.dart';
import 'package:create_doc/util/routing_string.dart';
import 'package:create_doc/util/shered_preferences.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> sizeAnimation;
  late AnimationController controller;
  late Animation<double> animation2;

  @override
  void initState() {
    Connection.connectivity().then((value){
      Logger.data("Internet connectivity is $value");
      PreferencesShared.setConnection(connectivity: value);
    });
    controller = AnimationController(
      duration: const Duration(
        seconds: 2,
      ),
      vsync: this,
    )..forward();
    controller.addListener(() {
      setState(() {});
    },
    );

    controller.addStatusListener((status) {
      Logger.data("status of listener $status");
      if (status == AnimationStatus.completed) {
        Navigator.pushNamedAndRemoveUntil(context, openWhichScreen()!, (route) => false);
      }
    });
    sizeAnimation = Tween<double>(begin: 0.4, end: 3.0).animate(controller);

    super.initState();
  }

  String? openWhichScreen()
  {

    if(PreferencesShared.getConnection){
      if (PreferencesShared.getAccessToken.isNotEmpty)
      {
        Logger.data("this section for home page");
        /*if(PreferencesShared.getUserEmailVerify)
        {
          return RoutingString.locationPage;
        }*/
        if(PreferencesShared.getUserEmailVerify)
        {
          return RoutingString.homePage;
        }
      }
      else if(PreferencesShared.signupRoute.isNotEmpty)
      {
        Logger.data("going to boarding and create account");
        if(PreferencesShared.getOnBoardingPass)
        {
          return RoutingString.signupRoute;
        }
        else{
          return RoutingString.walkThrough;
        }

      }
      else {
        Logger.data("walkthrough is");
        return RoutingString.walkThrough;
      }
    }
    else
    {
      return RoutingString.isInternet;
    }
    return RoutingString.walkThrough;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kGravishBlueColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: sizeAnimation.value,
                  child:  GiffyDialog.image(
                     Image.asset(AppImages.splash),
                     elevation: 0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
