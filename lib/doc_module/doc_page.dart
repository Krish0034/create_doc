import 'package:create_doc/util/common_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../util/app_colors.dart';
import '../util/common_divider.dart';

class DocPage extends StatefulWidget {
  const DocPage({super.key});

  @override
  State<DocPage> createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
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
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.cyan,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(10.h);
                  },
                ),
              ),
              CommonDevider(
                color: AppColors.backButtonColor,
                width: MediaQuery.of(context).size.width,
                height: 1.h,
              ),
              Gap(10.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.cyan,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(10.h);
                  },
                ),
              ),
              CommonDevider(
                color: AppColors.backButtonColor,
                width: MediaQuery.of(context).size.width,
                height: 1.h,
              ),
              Gap(10.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.cyan,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(10.h);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
