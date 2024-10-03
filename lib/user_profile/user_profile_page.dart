import '../setting/settings.dart';
import '../util/common_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/app_images.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CommonIconButton(
                  width: 35,
                  height: 35,
                  icon: AppImages.setting,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Settings(),
                      ),
                    );
                  },
                ),
              ),
              const Text(
                "home1",
                style: TextStyle(color: Colors.red),
              ),
              const Text(
                "home1",
                style: TextStyle(color: Colors.red),
              ),
              const Text(
                "home1",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
