import 'package:create_doc/auth/presentaion/bloc/email_signin_bloc/email_signin_bloc.dart';
import 'package:create_doc/di/di_setup.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/error_data.dart';
import '../../../../dashbord/presentaion/dash_bord_page.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_dialog.dart';
import '../../../../util/common_text_style.dart';
import '../../../../util/logger.dart';
import '../../../../util/shered_preferences.dart';
import '../../../../util/utility_function.dart';
import '../../../../util/validator_fields.dart';
import '../../../model/user_data.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late double passwordStrengthLength = 0;
  late String strengthText = '';
  late bool strengthPasswordVisibility = false;
  late bool obscure = true;
  late EmailSignInBloc _emailSignInBloc;

  @override
  void initState() {
    _emailSignInBloc = getIt<EmailSignInBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocListener(
        bloc: _emailSignInBloc,
        listener: (BuildContext context, state)
        {
          if (state is EmailSignInState) {
            UserData userData1 = state.userData.getOrElse(() => UserData());
            ErrorData? errorData = state.errorData;
            if (!state.userData.isNone())
            {
              PreferencesShared.setAccessToken(accessToken: userData1.uid,);
              PreferencesShared.setUserEmailVerify(userEmailVerify: true);
              PreferencesShared.setUserData(userData: userData1);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DashBordPage(),),);
            }
            else{
              if (errorData is HttpUnknownErrorData) {
                String errorMessage =UtilFunction().formatErrorMessage(errorData.message);
                CommonDialog.commonDialogOk(
                  context,
                  message: errorMessage,
                  title: AppString.alertText,
                  buttonText: AppString.okButtonText,
                  height: 250.h,
                  width: 600.w,
                );
              }
            }
          }
        },
        child: Stack(
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
                  const Align(
                    alignment: Alignment.topRight,
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
                  onPressed: ()
                  {
                    bool? isValid =UtilFunction().validateFields([
                      emailController,
                      passwordController
                    ]);
                    if (isValid??false)
                      {
                        _emailSignInBloc.add(
                        EmailSignInEvent.userLogin(
                          userEmail: emailController.text,
                          password: passwordController.text,
                          authType: AuthType.EMAIL,
                        ),
                      );
                    }
                    else
                      {
                        Logger.data("fields are not validate fully");
                      }
                  },
                  width: 140,
                  height: 50,
                  borderColor: AppColors.backButtonColor.withOpacity(0.5),
                  btnColor: AppColors.redButtonColor,
                  textStyle: CommonTextStyle.normalStyle
                      .copyWith(color: AppColors.whiteColor),
                  text: AppString.continueText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
