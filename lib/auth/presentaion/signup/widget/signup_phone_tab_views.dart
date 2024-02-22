import 'package:create_doc/auth/presentaion/signup/widget/user_details_fields.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_text_style.dart';
import '../../common/anothe_social_auth.dart';
import '../../common/have_already_account.dart';
import '../../common/phone_text_field.dart';
import '../../common/term_and_condition.dart';

class SignUpPhoneTabView extends StatefulWidget {
  const SignUpPhoneTabView({super.key});

  @override
  State<SignUpPhoneTabView> createState() => _SignUpPhoneTabViewState();
}

class _SignUpPhoneTabViewState extends State<SignUpPhoneTabView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              UserDetailsFields(
                authType: AuthType.PHONE,
                nameController: nameController,
                userNameController: userNameController,
              ),
              Gap(20.h),
              PhoneTextField(
                phoneController:phoneController,
              ),
              Gap(05.h),
              const TermAndCondition(),
              Gap(40.h),
              const AnotherSocialAuth(),
              Gap(40.h),
              const HaveAlreadyAccount(),
              Gap(150.h),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 35.h),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CommonButton(
              onPressed: () {

              },
              width: 140,
              height: 50,
              borderColor: AppColors.backButtonColor.withOpacity(0.5),
              btnColor: AppColors.redButtonColor,
              textStyle: CommonTextStyle.normalStyle.copyWith(),
              text: AppString.continueText,
            ),
          ),
        )
      ],
    );
  }
}
