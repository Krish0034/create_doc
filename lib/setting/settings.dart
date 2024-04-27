import 'package:create_doc/setting/widgets/settings_text_button.dart';
import 'package:create_doc/util/app_images.dart';
import 'package:create_doc/util/app_strings.dart';
import 'package:create_doc/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../util/common_icon_button.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 70.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CommonIconButton(
                  width: 40,
                  height: 40,
                  icon: AppImages.backIcon,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Gap(20.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.privacyPolicy,
                  text:AppString.privacyPolicy,
                ),
                Gap(20.h),
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.notification,
                  text:AppString.notification,
                ),
                Gap(20.h),
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.helpSupport,
                  text:AppString.helpSupport,
                ),
                Gap(20.h),
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.delete,
                  text:AppString.deleteProfile,
                ),
                Gap(20.h),
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.logout,
                  text:AppString.logOut,
                ),
                Gap(20.h),
                SettingTextButton(
                  onTap: () {
                    Logger.data("On tap data is ");
                  },
                  icon: AppImages.about,
                  text:AppString.about,
                ),
                Gap(20.h),
              ],
            )
          ],
        ),
      ),
    );
  }
}
