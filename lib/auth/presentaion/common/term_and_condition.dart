import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_strings.dart';
import '../../../util/common_text_style.dart';


class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

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
              text: AppString.termCondition1,
            ),
            TextSpan(
              text: AppString.termCondition,
              style: CommonTextStyle.normalStyle.copyWith(
                  color: AppColors.redButtonColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Handle onTap action
                },
            ),
            const TextSpan(text: AppString.and),
            TextSpan(
              text: AppString.privacyPolicy,
              style: CommonTextStyle.normalStyle.copyWith(
                color: AppColors.redButtonColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Handle onTap action
                },
            ),
          ],
        ),
      ),
    );
  }
}
