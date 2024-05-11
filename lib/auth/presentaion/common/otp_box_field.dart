import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../util/app_colors.dart';
import '../../../util/common_text_style.dart';

class OtpBoxField extends StatefulWidget {
  final TextEditingController otpController;
  final void Function(String)? onCompleted;
  const OtpBoxField({super.key, required this.otpController,this.onCompleted});

  @override
  State<OtpBoxField> createState() => _OtpBoxFieldState();
}

class _OtpBoxFieldState extends State<OtpBoxField> {
late String otpValue='';
final StreamController<ErrorAnimationType>? errorAnimationController=StreamController<ErrorAnimationType>();
  @override
  Widget build(BuildContext context) {

    return PinCodeTextField(
      textStyle: CommonTextStyle.normalStyle.copyWith(
        color: AppColors.backButtonColor,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
      autovalidateMode: AutovalidateMode.disabled,
      appContext: context,
      controller: widget.otpController,
      length: 6,
      hintCharacter: "0",
      keyboardType: TextInputType.number,
      validator: (v) {
        if (v!.length < 6) {
          return "Enter valid OTP";
        } else {
          return null;
        }
      },
      onChanged: (value){
        if(value.isEmpty){
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      onCompleted:widget.onCompleted ??(otp){otpValue=otp;},
      errorAnimationController: errorAnimationController,
      pinTheme: PinTheme(
        activeColor: Colors.black,
        selectedColor: Colors.black,
        inactiveColor: Colors.black.withOpacity(0.4),
        errorBorderColor: AppColors.redButtonColor,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldWidth: 60.w,
        fieldHeight: 60.h,
        activeBorderWidth:1.w,
        inactiveBorderWidth: 0.5.w,
        selectedBorderWidth:2.w,
      ),
    );
  }
}
