import 'package:create_doc/auth/presentaion/signup/widget/user_details_fields.dart';
import 'package:flutter/material.dart';
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
                nameController: nameController,
                userNameController: userNameController,
              ),
              const Gap(20),
              PhoneTextField(
                phoneController:phoneController,
              ),
              const Gap(05),
              const TermAndCondition(),
              const Gap(40),
              const AnotherSocialAuth(),
              const Gap(40),
              const HaveAlreadyAccount()
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
              textStyle: CommonTextStyle.normalStyle.copyWith(),
              text: AppString.continueText,
            ),
          ),
        ),
      ],
    );
  }
}
