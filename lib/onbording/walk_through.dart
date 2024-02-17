import 'package:create_doc/onbording/widget/image_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../auth/presentaion/login/login_page_tab.dart';
import '../auth/presentaion/signup/signup_page_tab.dart';
import '../util/app_colors.dart';
import '../util/app_images.dart';
import '../util/app_strings.dart';
import '../util/common_button.dart';
import '../util/common_text_style.dart';
import '../util/shered_preferences.dart';


class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final PageController _pageController = PageController();
  late int pageIndex = 0;
  final List<Widget> pages = [
    Padding(
      padding: EdgeInsets.only(left: 50.w, right: 50.w),
      child: ListView(
        children: [
          Center(
            child: Text(
              AppString.onBoardingTitle1,
              textAlign: TextAlign.center,
              style: CommonTextStyle.normalStyle.copyWith(fontSize: 20),
            ),
          ),
          const Gap(20),
          const ImageWidget(
            imageUlr: AppImages.onboarding1,
            width: 200,
            height: 240,
          ),
          const Gap(25),
          Text(
            AppString.onBoardingDesc1,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 50.w, right: 50.w),
      child: ListView(
        children: [
          Center(
            child: Text(
              AppString.onBoardingTitle2,
              textAlign: TextAlign.center,
              style: CommonTextStyle.normalStyle.copyWith(fontSize: 20),
            ),
          ),
          const Gap(20),
          const ImageWidget(
            imageUlr: AppImages.onboarding2,
            width: 200,
            height: 240,
          ),
          const Gap(25),
          Text(
            AppString.onBoardingDesc2,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 50.w, right: 50.w),
      child: ListView(
        children: [
          Center(
            child: Text(
              AppString.onBoardingTitle3,
              textAlign: TextAlign.center,
              style: CommonTextStyle.normalStyle.copyWith(fontSize: 20),
            ),
          ),
          const Gap(20),
          const ImageWidget(
            imageUlr: AppImages.onboarding3,
            width: 200,
            height: 240,
          ),
          const Gap(25),
          Text(
            AppString.onBoardingDesc3,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: Center(
          child: Text(
            "AppString",
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(fontSize: 22),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: pages,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: DotsIndicator(
                        dotsCount: pages.length,
                        position: pageIndex,
                        decorator: DotsDecorator(
                          activeColors: [
                            const Color(0xff305972),
                            const Color(0xff305972),
                            const Color(0xff305972)
                          ],
                          size: Size(10.w, 10.h),
                          activeSize: Size(10.w, 10.h),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          spacing: EdgeInsets.only(right: 6.w),
                        ),
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w,right: 15.w,bottom: 30.h),
                      child: Expanded(
                        child: pageIndex == 2
                            ? Row(
                              children: [
                                CommonButton(
                                  onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPageTab(),
                                    ),
                                  );
                                  },
                                  width: 130,
                                  height: 50,
                                  text: AppString.logIn,
                                  textStyle: CommonTextStyle.normalStyle.copyWith(
                                    color: AppColors.backButtonColor,
                                  ),
                                  borderColor: AppColors.backButtonColor.withOpacity(0.5),
                                  btnColor: AppColors.whiteColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CommonButton(
                                  onPressed: () {
                                    SheredPreferences.setOnBoardingPass(
                                        onBoardingPass: true);
                                    SheredPreferences.setSignUpRoute(signupRoute: "signupRoute");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SignUpPageTab(),
                                      ),
                                    );
                                  },
                                  width: 130,
                                  height: 50,
                                  borderColor: AppColors.backButtonColor.withOpacity(0.5),
                                  btnColor: AppColors.redButtonColor,
                                  textStyle: CommonTextStyle.normalStyle.copyWith(),
                                  text: AppString.signUp,
                                ),
                              ],
                            )
                            : Row(
                              children: [
                                CommonButton(
                                  onPressed: () {
                                    setState(() {
                                      pageIndex = 2;
                                    });
                                  },
                                  width: 130,
                                  height: 50,
                                  text: AppString.skip,
                                  textStyle: CommonTextStyle.normalStyle.copyWith(
                                    color: AppColors.backButtonColor,
                                  ),
                                  borderColor: AppColors.backButtonColor.withOpacity(0.5),
                                  btnColor: AppColors.whiteColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CommonButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  width: 130,
                                  height: 50,
                                  text: AppString.next,
                                  textStyle: CommonTextStyle.normalStyle.copyWith(
                                    color: AppColors.backButtonColor,
                                  ),
                                  borderColor: AppColors.backButtonColor.withOpacity(0.5),
                                  btnColor: AppColors.redButtonColor,
                                ),
                              ],
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
