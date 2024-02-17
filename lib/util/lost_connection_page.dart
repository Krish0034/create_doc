import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'app_colors.dart';
import 'app_images.dart';
import 'app_strings.dart';
import 'common_button.dart';
import 'common_text_style.dart';

class LostConnectionPage extends StatefulWidget {
  const LostConnectionPage({Key? key}) : super(key: key);

  @override
  State<LostConnectionPage> createState() => _LostConnectionPageState();
}

class _LostConnectionPageState extends State<LostConnectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.internetLost,
              color: AppColors.redButtonColor,
            ),
            Text(
              AppString.lostInternet,
              style: CommonTextStyle.normalStyle,
            ),
            SizedBox(
              height: 50.h,
            ),
            CommonButton(
              height: 50,
              width: 180,
              onPressed: (){
                exit(0);
              },
              text: "Close App",
              textStyle:CommonTextStyle.buttonStyle.copyWith(fontWeight: FontWeight.w800),
              btnColor:AppColors.redButtonColor,
            )
          ],
        ),
      ),
    );
  }
}
