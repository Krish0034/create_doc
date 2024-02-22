import 'package:create_doc/auth/presentaion/signup/widget/user_details_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_text_style.dart';
import '../../../../util/logger.dart';
import '../../../../util/validator_fields.dart';
import '../../../model/user_data.dart';
import '../../bloc/signup_bloc/signup_bloc.dart';
import '../../bloc/user_name_bloc/user_name_bloc.dart';
import '../../common/anothe_social_auth.dart';
import '../../common/email_password_widget.dart';
import '../../common/have_already_account.dart';
import '../../common/search_location_page.dart';
import '../../common/term_and_condition.dart';

class SignUpEmailTabViews extends StatefulWidget {
  const SignUpEmailTabViews({super.key});

  @override
  State<SignUpEmailTabViews> createState() => _SignUpEmailTabViewsState();
}

class _SignUpEmailTabViewsState extends State<SignUpEmailTabViews> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late double passwordStrengthLength = 0;
  late String strengthText = '';
  late bool strengthPasswordVisibility = false;
  late bool obscure = true;
  late SignUpBloc _signupBloc;
  late UserNameBloc _userNameBloc;
  late bool userNameExist;

  @override
  void initState() {
    _signupBloc = getIt<SignUpBloc>();
    _userNameBloc = getIt<UserNameBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: _signupBloc,
        listener: (BuildContext context, state) {
          if (state is SignUpState) {
            if (!state.userData.isNone()) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchLocationPage(),
                  ));
            }
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  UserDetailsFields(
                    authType: AuthType.EMAIL,
                    nameController: nameController,
                    userNameController: userNameController,
                  ),
                  Gap(20.h),
                  EmailPasswordWidget(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                  Gap(10.h),
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
                    if (_validateFields()) {
                      _signupBloc.add(SignUpEvent.createUser(
                        userData: UserData(
                          fullName: nameController.text.toString(),
                          username: userNameController.text.toString(),
                          email: emailController.text.toString(),
                          password: passwordController.text.toString(),
                          createdDate: DateTime.now().millisecondsSinceEpoch,
                          createdBy: nameController.text.toString(),
                          updatedDate: DateTime.now().millisecondsSinceEpoch,
                          updatedBy: nameController.text.toString(),
                          instagram: '',
                          phone: '',
                          uid: '',
                          usageReminderDate:
                              DateTime.now().millisecondsSinceEpoch,
                          image: '',
                          fcm: '',
                          status: true,
                        ),
                        authType: AuthType.EMAIL,
                      ));
                    } else {
                      Logger.data("fields are not validate fully");
                    }
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
        ));
  }

  bool _validateFields() {
    if (nameController.text.isNotEmpty &&
        userNameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        ValidatorFields.email(emailController.text.toString()) == true) {
      return true;
    } else {
      return false;
    }
  }
}
