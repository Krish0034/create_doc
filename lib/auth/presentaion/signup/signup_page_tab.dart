import 'package:create_doc/auth/presentaion/signup/widget/signup_email_tab_views.dart';
import 'package:create_doc/auth/presentaion/signup/widget/signup_phone_tab_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../di/di_setup.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_strings.dart';
import '../../../util/common_text_style.dart';
import '../bloc/signup_bloc/signup_bloc.dart';

class SignUpPageTab extends StatefulWidget {
  const SignUpPageTab({super.key});

  @override
  State<SignUpPageTab> createState() => SignUpPageTabState();
}

class SignUpPageTabState extends State<SignUpPageTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late SignUpBloc _signupBloc;

  @override
  void initState() {
    _signupBloc = getIt<SignUpBloc>();
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text(AppString.signUpPageTitle)),
        backgroundColor: AppColors.whiteColor,
      ),
      body: BlocProvider<SignUpBloc>(
        create: (context) => _signupBloc,
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w,),
          child: Column(
            children: [
              const Gap(20),
              TabBar(
                overlayColor: MaterialStateColor.resolveWith((
                    Set<MaterialState> states) {
                  return AppColors.transparent;
                }),
                splashFactory: NoSplash.splashFactory,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: AppColors.transparent,
                controller: _tabController,
                indicator: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: tabIndicatorGradiant,
                    stops: const [0.0, 0.47, 1.0],
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                labelColor: AppColors.backButtonColor,
                labelStyle: CommonTextStyle.normalStyle.copyWith(
                    color: AppColors.backButtonColor),
                unselectedLabelStyle: CommonTextStyle.normalStyle.copyWith(
                    color: AppColors.backButtonColor.withOpacity(0.5)),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Container(
                    constraints: const BoxConstraints(minWidth: 250),
                    child: const Tab(
                      child: Center(
                        child: Text(
                          AppString.emailHintText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(minWidth: 250),
                    child: const Tab(
                      child: Center(
                        child: Text(
                          AppString.phoneHintText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    SignUpEmailTabViews(), SignUpPhoneTabView()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
