import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_strings.dart';
import '../../../util/common_text_style.dart';
import '../login/login_page_tab.dart';

class HaveAlreadyAccount extends StatefulWidget {
  const HaveAlreadyAccount({super.key});

  @override
  State<HaveAlreadyAccount> createState() => _HaveAlreadyAccountState();
}

class _HaveAlreadyAccountState extends State<HaveAlreadyAccount> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          style: CommonTextStyle.normalStyle.copyWith(
            color: AppColors.backButtonColor.withOpacity(0.5),
            fontWeight: FontWeight.w200,
            fontSize: 15,
          ),
          children: [
            const TextSpan(
              text: AppString.alreadyAccount,
            ),
            TextSpan(
              text: AppString.loginNow,
              style: CommonTextStyle.normalStyle.copyWith(
                color: AppColors.redButtonColor,
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageTab(),
                    ),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
