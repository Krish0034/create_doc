import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_images.dart';
import '../../../util/app_strings.dart';
import '../../../util/common_text_style.dart';

class AnotherSocialAuth extends StatefulWidget {
  const AnotherSocialAuth({super.key});

  @override
  State<AnotherSocialAuth> createState() => _AnotherSocialAuthState();
}

class _AnotherSocialAuthState extends State<AnotherSocialAuth> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: AppColors.backButtonColor.withOpacity(0.4),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                AppString.orContinueWith,
                style: CommonTextStyle.normalStyle.copyWith(
                  color: AppColors.backButtonColor.withOpacity(0.5),
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Divider(
                  color: AppColors.backButtonColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.only(left: 80,right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration:  BoxDecoration(
                  border: Border.all(width: 1,color: AppColors.backButtonColor.withOpacity(0.5)),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.faceBook,
                    ),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.gmail,
                    ),
                  ),
                  border: Border.all(width: 1,color: AppColors.backButtonColor.withOpacity(0.5)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: AppColors.backButtonColor.withOpacity(0.5)),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.apple,
                    ),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
