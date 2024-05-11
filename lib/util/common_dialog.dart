import 'package:create_doc/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'common_button.dart';
import 'common_text_style.dart';
import 'logger.dart';

class CommonDialog
{

  static Future<dynamic>? commonDialogOk(
      BuildContext context,{ String? message,String? buttonText,
      String? title,double? height,double? width,double? buttonWidth,
        String? email,
      Function? onPressed}
      ) {
    Logger.data("that call sendEmailVerificationDialog dialog");
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
          child: SizedBox(
            height: height??200.h,
            width: width??400.w,
            child: Padding(
              padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 10.h,bottom: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 8.h,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                        color: AppColors.backButtonColor.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                  Gap(20.h),
                  email!=null?Text(email??''):const SizedBox.shrink(),
                  Text(
                    title??'',
                    style:CommonTextStyle.normalStyle.copyWith(
                      color: AppColors.redButtonColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Gap(20.h),
                  Expanded(
                    child: Text(
                      message??'',
                      textAlign: TextAlign.center,
                      style:CommonTextStyle.normalStyle.copyWith(
                        color: AppColors.backButtonColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Gap(20.h),
                  CommonButton(
                    onPressed:onPressed?? () {
                      Navigator.pop(context);
                    },
                    height: 50.h,
                    width:buttonWidth??100.w,
                    text: buttonText??"OK",
                    textStyle: CommonTextStyle.normalStyle.copyWith(
                      color: AppColors.whiteColor,
                    ),
                    borderColor: AppColors.backButtonColor.withOpacity(0.5),
                    btnColor: AppColors.redButtonColor,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}