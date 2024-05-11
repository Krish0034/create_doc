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
    ListView(
      children: [
        Center(
          child: Text(
            AppString.onBoardingTitle1,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        const ImageWidget(
          imageUlr: AppImages.onboarding1,
          width: 200,
          height: 240,
        ),
        const Gap(65),
        Text(
          AppString.onBoardingDesc1,
          textAlign: TextAlign.center,
          style: CommonTextStyle.normalStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    ListView(
      children: [
        Center(
          child: Text(
            AppString.onBoardingTitle2,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        const ImageWidget(
          imageUlr: AppImages.onboarding2,
          width: 200,
          height: 240,
        ),
        const Gap(65),
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
    ListView(
      children: [
        Center(
          child: Text(
            AppString.onBoardingTitle3,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        const ImageWidget(
          imageUlr: AppImages.onboarding3,
          width: 200,
          height: 240,
        ),
        const Gap(65),
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
            AppString.appName,
            textAlign: TextAlign.center,
            style: CommonTextStyle.normalStyle.copyWith(fontSize: 23),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 40.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: PageView(
                controller: _pageController,
                children: pages,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                        const Color(0xff305972),
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
                pageIndex == 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CommonButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPageTab(),
                                  ),
                                );
                              },
                              height: 50,
                              text: AppString.logIn,
                              textStyle: CommonTextStyle.normalStyle.copyWith(
                                color: AppColors.backButtonColor,
                              ),
                              borderColor:
                                  AppColors.backButtonColor.withOpacity(0.5),
                              btnColor: AppColors.whiteColor,
                            ),
                          ),
                          Gap(30.w),
                          Expanded(
                            flex: 1,
                            child: CommonButton(
                              onPressed: () {
                                PreferencesShared.setOnBoardingPass(
                                    onBoardingPass: true);
                                PreferencesShared.setSignUpRoute(
                                    signupRoute: "signupRoute");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPageTab(),
                                  ),
                                );
                              },
                              height: 50,
                              borderColor:
                                  AppColors.backButtonColor.withOpacity(0.5),
                              btnColor: AppColors.redButtonColor,
                              textStyle: CommonTextStyle.normalStyle
                                  .copyWith(color: AppColors.whiteColor),
                              text: AppString.signUp,
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CommonButton(
                              onPressed: () {
                                setState(() {
                                  pageIndex = 2;
                                });
                              },
                              height: 50,
                              text: AppString.skip,
                              textStyle: CommonTextStyle.normalStyle.copyWith(
                                color: AppColors.backButtonColor,
                              ),
                              borderColor:
                                  AppColors.backButtonColor.withOpacity(0.5),
                              btnColor: AppColors.whiteColor,
                            ),
                          ),
                          Gap(30.w),
                          Expanded(
                            flex: 1,
                            child: CommonButton(
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              height: 50,
                              text: AppString.next,
                              textStyle: CommonTextStyle.normalStyle.copyWith(
                                color: AppColors.whiteColor,
                              ),
                              borderColor:
                                  AppColors.backButtonColor.withOpacity(0.5),
                              btnColor: AppColors.redButtonColor,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
