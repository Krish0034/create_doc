import 'package:create_doc/auth/model/code_model_response.dart';
import 'package:create_doc/auth/model/phone_auth_provider_model.dart';
import 'package:create_doc/auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:create_doc/auth/presentaion/common/otv_verification_page.dart';
import 'package:create_doc/auth/presentaion/signup/widget/user_details_fields.dart';
import 'package:create_doc/util/auth_type.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../../core/error_data.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/common_button.dart';
import '../../../../util/common_dialog.dart';
import '../../../../util/common_text_style.dart';
import '../../../../util/logger.dart';
import '../../../../util/utility_function.dart';
import '../../../model/user_data.dart';
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
  late String phoneNumberWithCode = '';
  UserData? userData;

  @override
  void initState() {
    _phoneAuthBloc = getIt<PhoneAuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocListener(
        bloc: _phoneAuthBloc,
        listener: (BuildContext context, state) {
          if (state is PhoneAuthState) {
            CodeModelResponse codeModelResponse = state.codeModelResponse
                .getOrElse(() => CodeModelResponse());
            ErrorData? errorData = state.errorData;
            if (!state.codeModelResponse.isNone()) {
              Logger.data(
                  "after creating user is: ${codeModelResponse.toJson()}");
              PhoneAuthProviderModel phoneAuthProviderModel = PhoneAuthProviderModel()
                ..codeModelResponse = codeModelResponse
                ..otpCode = '';
              Logger.data(
                  "after creating user is phone auth model: ${phoneAuthProviderModel
                      .codeModelResponse?.toJson()}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      OtpVerificationPage(
                        pageType: "SignUpPage",
                        userData: userData,
                        phoneAuthProviderModel:phoneAuthProviderModel,
                      ),
                ),
              );
            }
            else {
              if (errorData is HttpUnknownErrorData) {
                String errorMessage = errorData.message;
                if (errorMessage ==
                    '[firebase_auth/invalid-phone-number] Invalid format.') {
                  errorMessage = "Invalid format.";
                }
                else {
                  errorMessage = "Internal Server Error";
                }
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
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.only(
                  bottom: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom),
              child: Column(
                children: [
                  UserDetailsFields(
                    authType: AuthType.PHONE,
                    nameController: nameController,
                    // userNameController: userNameController,
                  ),
                  Gap(20.h),
                  PhoneTextField(
                    phoneController: phoneController,
                    onChange: (PhoneNumber value) {
                      Logger.data(
                          "phone number is on phone view page: ${value
                              .completeNumber}");
                      setState(() {
                        phoneNumberWithCode = value.completeNumber;
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
                    bool? isValid = UtilFunction().validateFields([
                      phoneController,
                      nameController,
                      userNameController,
                    ]);

                    if (isValid ?? false) {
                      String? fcmToken;
                      FirebaseMessaging.instance.getToken().then((token) {
                        Logger.data("token is $token");
                        fcmToken = token ?? '';
                      });
                      _phoneAuthBloc.add(PhoneAuthEvent.sendOtp(
                        phoneNumberWithCode: phoneNumberWithCode,
                        authType: AuthType.PHONE,
                      ));
                      userData = UserData(
                        fullName: nameController.text.toString(),
                        username: userNameController.text.toString(),
                        email: nameController.text.toString(),
                        password: "",
                        createdDate: DateTime
                            .now()
                            .millisecondsSinceEpoch,
                        createdBy: nameController.text.toString(),
                        updatedDate: DateTime
                            .now()
                            .millisecondsSinceEpoch,
                        updatedBy: nameController.text.toString(),
                        instagram: '',
                        phone: phoneNumberWithCode,
                        uid: '',
                        usageReminderDate: DateTime
                            .now()
                            .millisecondsSinceEpoch,
                        image: '',
                        fcm: fcmToken,
                        status: true,
                      );
                    }
                    else {
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
            )
          ],
        ),
      ),
    );
  }

}
