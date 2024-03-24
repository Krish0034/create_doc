import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../util/app_colors.dart';
import '../util/common_divider.dart';
import '../util/common_text_style.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Your Doc List.",
                  style: CommonTextStyle.normalStyle.copyWith(fontSize: 22),
                ),
              ),
              CommonDevider(
                color: AppColors.backButtonColor,
                width: MediaQuery.of(context).size.width,
                height: 1.h,
              ),
              Gap(10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                  border: Border.all(color: Colors.black, width: 1.5.w),
                ),
              ),
              Gap(10.h),

            ],
          ),
        ),
      ),
    );
  }
}
