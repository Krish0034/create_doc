import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_text_style.dart';
import '../../common/anothe_social_auth.dart';
import '../../common/dont_have_already_account.dart';
import '../../common/phone_text_field.dart';
import '../../common/term_and_condition.dart';

class LoginPhoneTabView extends StatefulWidget {
  const LoginPhoneTabView({super.key});

  @override
  State<LoginPhoneTabView> createState() => _LoginPhoneTabViewState();
}

class _LoginPhoneTabViewState extends State<LoginPhoneTabView> {
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
              PhoneTextField(
                phoneController:phoneController,
              ),
              const Gap(05),
              const TermAndCondition(),
              const Gap(40),
              const AnotherSocialAuth(),
              const Gap(40),
              const DoNotHaveAlreadyAccount()
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 40),
          child: Positioned(
            bottom: 0,
            child: CommonButton(
              onPressed: () {

              },
              width: 140,
              height: 50,
              borderColor: AppColors.backButtonColor.withOpacity(0.5),
              btnColor: AppColors.redButtonColor,
              textStyle: CommonTextStyle.normalStyle.copyWith(color: AppColors.whiteColor),
              text: AppString.continueText,
            ),
          ),
        ),
      ],
    );
  }
}
