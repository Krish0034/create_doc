import 'package:create_doc/auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:create_doc/auth/presentaion/signup/widget/user_details_fields.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_text_style.dart';
import '../../../../util/logger.dart';
import '../../bloc/signup_bloc/signup_bloc.dart';
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
  late PhoneAuthBloc _phoneAuthBloc;
  late String phoneNumberWithCode='';

  @override
  void initState() {
    _phoneAuthBloc = getIt<PhoneAuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _phoneAuthBloc,
      listener: (context, state) {

      },
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.only(bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom),
            child: Column(
              children: [
                UserDetailsFields(
                  authType: AuthType.PHONE,
                  nameController: nameController,
                  userNameController: userNameController,
                ),
                Gap(20.h),
                PhoneTextField(
                  phoneController: phoneController,
                  onChange: (PhoneNumber value) {
                    Logger.data("phone number is on phone view page: ${value
                        .completeNumber}");
                    setState(() {
                      phoneNumberWithCode=value.completeNumber;
                    });
                  },
                ),
                Gap(05.h),
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
                    String? fcmToken;
                    FirebaseMessaging.instance.getToken().then((token) {
                      Logger.data("token is $token");
                      fcmToken = token??'';
                    });
                    _phoneAuthBloc.add(
                      PhoneAuthEvent.sendOtp(
                          phoneNumberWithCode: phoneNumberWithCode,
                          authType: AuthType.PHONE,
                      )
                    );
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
          )
        ],
      ),
    );
  }

  /*Future<void> sendOtpCode() async
  {
    await firebaseAuth.verifyWithPhone(
      Get.context!,
      phone: phone,
      verificationFailed: (e) {
        Log.v('object=> $e');
        isLoading(false);
      },
      codeSent: (String verificationId, int? resendToken) {
        Log.v("vIDOTP:-$verificationId");
        Get.to(() => OtpVerification(
          verificationId: verificationId,
          type: "Signup",
          emailph: phone,
          password: password.value.text,
          user: userModel,
          loginType: loginType.value,
        ),
        )?.whenComplete(() {
          isLoading(false);
        });
      },

    ).then((value) {});
  }
*/
  bool _validateFields() {
    if (nameController.text.isNotEmpty &&
        userNameController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
