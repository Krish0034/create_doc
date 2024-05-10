import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../common/custom_text_field.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_images.dart';
import '../../../util/app_strings.dart';
import '../../../util/logger.dart';
import '../../../util/validator_fields.dart';

class EmailPasswordWidget extends StatefulWidget {
  final TextEditingController emailController ;
  final TextEditingController passwordController;
  const EmailPasswordWidget({super.key,required this.emailController,required this.passwordController,});

  @override
  State<EmailPasswordWidget> createState() => _EmailPasswordWidgetState();
}

class _EmailPasswordWidgetState extends State<EmailPasswordWidget> {
  late String strengthText = '';
  late bool strengthPasswordVisibility = false;
  late bool obscure = true;
  late double passwordStrengthLength = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: AppString.emailHintText,
          controller: widget.emailController,
          hintText: AppString.emailHintText,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          textInputType: TextInputType.text,
          validator: (value) {
            if (value!.isEmpty || value == null) {
              Logger.data("empty email field");
              return AppString.emailValidatorText;
            }
            else
            {
              if(ValidatorFields.email(value)??false)
              {
                Logger.data("valid email");
                return null;
              }
              else{
                Logger.data("not valid email");
                return AppString.emailValidatorText1;
              }
            }
          },
        ),
        Gap(20.h),
        CustomTextField(
          label: AppString.passwordHintText,
          controller: widget.passwordController,
          hintText: AppString.passwordHintText,
          textInputType: TextInputType.visiblePassword,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscure,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(11),
                child: obscure
                    ? SvgPicture.asset(
                  width: 1,
                  height: 1,
                  fit: BoxFit.fill,
                  AppImages.closeEye,
                )
                    : SvgPicture.asset(
                  width: 1,
                  height: 1,
                  fit: BoxFit.fill,
                  AppImages.openEye,
                ),
              )),
          onChanged: (value) {
            if (value == null || value == "") {
              setState(() {
                strengthPasswordVisibility = false;
              });
              return strengthPasswordVisibility??'';
            } else {
              setState(() {
                strengthPasswordVisibility = true;
                checkPasswordValue(value);
              });
              return strengthPasswordVisibility;
            }
          },
          validator: (value) {
            if (value!.isEmpty || value == null) {
              return AppString.passwordValidatorText;
            } else {
              return null;
            }
          },
        ),
        Visibility(
          visible: strengthPasswordVisibility,
          child: Column(
            children: [
              Gap(8.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: passwordStrengthLength,
                  backgroundColor: Colors.white,
                  color: passwordStrengthLength <= 1 / 4
                      ? AppColors.progressRed
                      : passwordStrengthLength == 2 / 4
                      ? AppColors.progressYellow
                      : passwordStrengthLength == 3 / 4
                      ? AppColors.progressBlue
                      : AppColors.progressGreen,
                  minHeight: 4,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(strengthText),
              )
            ],
          ),
        ),
      ],
    );
  }

  Future<void> checkPasswordValue(String password) async {
    RegExp numReg = RegExp(r".*[0-9].*");
    RegExp letterReg = RegExp(r".*[A-Z].*");
    RegExp specialReg = RegExp(r'\W');

    if (password.isEmpty) {
      passwordStrengthLength = 0;
      strengthText = '';
    } else if (password.length < 8) {
      passwordStrengthLength = 1 / 4;
      strengthText = AppString.passwordStrength1;
    } else if (password.length >= 8) {
      if (letterReg.hasMatch(password) &&
          numReg.hasMatch(password) &&
          !specialReg.hasMatch(password)) {
        Logger.data("HAS LETNUM MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 3 / 4;
        strengthText = AppString.passwordStrength2;
      } else if (letterReg.hasMatch(password) &&
          specialReg.hasMatch(password) &&
          !numReg.hasMatch(password)) {
        Logger.data("HAS letSpec MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 3 / 4;
        strengthText = AppString.passwordStrength3;
      } else if (numReg.hasMatch(password) &&
          specialReg.hasMatch(password) &&
          !letterReg.hasMatch(password)) {
        Logger.data("HAS NUMSpec MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 2 / 4;
        strengthText = AppString.passwordStrength4;
      } else if (numReg.hasMatch(password) &&
          specialReg.hasMatch(password) &&
          letterReg.hasMatch(password)) {
        passwordStrengthLength = 4 / 4;
        strengthText = AppString.passwordStrength5;
      } else if (numReg.hasMatch(password) &&
          !specialReg.hasMatch(password) &&
          !letterReg.hasMatch(password)) {
        Logger.data("HAS NUM MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 1 / 4;
        strengthText = AppString.passwordStrength6;
      } else if (!numReg.hasMatch(password) &&
          specialReg.hasMatch(password) &&
          !letterReg.hasMatch(password)) {
        Logger.data("HAS SPEC MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 1 / 4;
        strengthText = AppString.passwordStrength7;
      } else if (!numReg.hasMatch(password) &&
          !specialReg.hasMatch(password) &&
          letterReg.hasMatch(password)) {
        Logger.data("HAS LET MATCH :${numReg.hasMatch(password)}");
        passwordStrengthLength = 1 / 4;
        strengthText = AppString.passwordStrength8;
      } else if (!numReg.hasMatch(password) &&
          !specialReg.hasMatch(password) &&
          !letterReg.hasMatch(password)) {
        passwordStrengthLength = 1 / 4;
        strengthText = AppString.passwordStrength9;
      }
    }
  }
}
