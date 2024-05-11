import 'package:create_doc/util/app_images.dart';
import 'package:create_doc/util/common_divider.dart';
import 'package:create_doc/util/common_icon_button.dart';
import 'package:create_doc/util/common_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../util/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r)
                      ),
                      child: CommonIconButton(
                        width: 30,
                        height: 30,
                        icon: AppImages.userProfile,
                      ),
                    ),
                  ),
                  CommonIconButton(
                    width: 30,
                    height: 30,
                    color: AppColors.backButtonColor,
                    icon: AppImages.notification,
                  )
                ],
              ),
              Gap(10.h),
              CommonDevider(
                color: AppColors.backButtonColor,
                width: MediaQuery.of(context).size.width,
                height: 1.h,
              ),
              Gap(10.h),
              const Text("Doc Viewer"),
              Gap(10.h),
              CommonDevider(
                color: AppColors.backButtonColor,
                width: MediaQuery.of(context).size.width,
                height: 1.h,
              ),
              Gap(10.h),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*2,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    border: Border.all(color: Colors.black, width: 1.5.w),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
