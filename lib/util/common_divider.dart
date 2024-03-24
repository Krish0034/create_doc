import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class CommonDevider extends StatelessWidget {
  double? width;
  double? height;
  Color? color;
  CommonDevider({super.key,this.height,this.width,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??100.w,
      height: height??8.h,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
          color:color?? AppColors.backButtonColor.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(30))
      ),
    );
  }
}
