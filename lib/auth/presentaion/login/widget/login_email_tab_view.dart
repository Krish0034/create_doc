import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_text_style.dart';
import '../../common/anothe_social_auth.dart';
import '../../common/dont_have_already_account.dart';
import '../../common/email_password_widget.dart';
import '../../common/term_and_condition.dart';


class LoginEmailTabViews extends StatefulWidget {
  const LoginEmailTabViews({super.key});

  @override
  State<LoginEmailTabViews> createState() => _LoginEmailTabViewsState();
}

class _LoginEmailTabViewsState extends State<LoginEmailTabViews> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late double passwordStrengthLength = 0;
  late String strengthText = '';
  late bool strengthPasswordVisibility = false;
  late bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const PageScrollPhysics(),
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: <Widget>[
              EmailPasswordWidget(
                emailController: emailController,
                passwordController: passwordController,
              ),
              const Gap(10),
              const Align(alignment: Alignment.topRight,
                child: Text("forget password"),
              ),
              const Gap(10),
              const TermAndCondition(),
              const Gap(40),
              const AnotherSocialAuth(),
              const Gap(40),
              const DoNotHaveAlreadyAccount()
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
              textStyle: CommonTextStyle.normalStyle.copyWith(color: AppColors.whiteColor),
              text: AppString.continueText,
            ),
          ),
        ),

      ],
    );
  }

}
