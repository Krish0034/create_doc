import 'dart:async';

import 'package:create_doc/auth/model/code_model_response.dart';
import 'package:create_doc/auth/model/user_data.dart';
import 'package:create_doc/auth/presentaion/bloc/get_user_data_bloc/get_user_data_bloc.dart';
import 'package:create_doc/auth/presentaion/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:create_doc/auth/presentaion/common/search_location_page.dart';
import 'package:create_doc/util/extences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/error_data.dart';
import '../../../dashbord/presentaion/dash_bord_page.dart';
import '../../../di/di_setup.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_strings.dart';
import '../../../util/auth_type.dart';
import '../../../util/common_button.dart';
import '../../../util/common_dialog.dart';
import '../../../util/common_text_style.dart';
import '../../../util/logger.dart';
import '../../../util/shered_preferences.dart';
import '../../model/phone_auth_provider_model.dart';

import '../bloc/email_signup_bloc/email_signup_bloc.dart';
import 'otp_box_field.dart';

class OtpVerificationPage extends StatefulWidget {
  final UserData? userData;
  final String? pageType;
  final PhoneAuthProviderModel? phoneAuthProviderModel;

  const OtpVerificationPage(
      {super.key, this.userData, this.phoneAuthProviderModel,this.pageType});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final TextEditingController otpController = TextEditingController();
  late EmailSignUpBloc _signupBloc;
  late PhoneAuthBloc _phoneAuthBloc;
  late GetUserDataBloc _getUserDataBloc;
  late String otpValue = '';
  late Timer _timer;
  int _start = 60;
  bool isLoading = false;

  @override
  void initState() {
    startTimer();
    _signupBloc = getIt<EmailSignUpBloc>();
    _phoneAuthBloc = getIt<PhoneAuthBloc>();
    _getUserDataBloc = getIt<GetUserDataBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            AppString.otpVerify,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: _signupBloc,
            listener: (context, state) {
              if (state is EmailSignUpState) {
                UserData userData1 = state.userData.getOrElse(() => UserData());
                ErrorData? errorData = state.errorData;
                if (!state.userData.isNone()) {
                  Logger.data("after creating user is: ${userData1.toJson()}");
                  int? timestamp = userData1.createdDate;
                  DateTime dateTime =
                      DateTime.fromMillisecondsSinceEpoch(timestamp ?? 0);
                  Logger.data('Formatted Date: ${dateTime.formattedDate()}');
                  Logger.data('Formatted Time: ${dateTime.formattedTime()}');
                  CommonDialog.commonDialogOk(context,
                      message: AppString.yourOtpVerify,
                      email: userData1.phone,
                      title: AppString.otpVerifySuccess,
                      buttonText: AppString.next,
                      height: 350.h,
                      width: 600.w,
                      buttonWidth: 200.w, onPressed: () async {
                    PreferencesShared.setAccessToken(
                      accessToken: userData1.uid,
                    );
                    PreferencesShared.setUserEmailVerify(userEmailVerify: true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashBordPage(),
                      ),
                    );
                    /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchLocationPage(),
                  ),
                );*/
                  });
                } else {
                  if (errorData is HttpUnknownErrorData)
                  {
                    String errorMessage = errorData.message;
                    if (errorMessage == 'email-already-in-use') {
                      errorMessage = "Email already In Use.";
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
          ),
          BlocListener(
            bloc: _getUserDataBloc,
            listener: (context, state) {

            },
          ),
        ],
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              Gap(20.h),
              Text(
                AppString.pleaseEnterVerify,
                style: CommonTextStyle.normalStyle.copyWith(fontSize: 20),
              ),
              Gap(20.h),
              Text(
                AppString.pleaseEnterVerifyDesc,
                style: CommonTextStyle.normalStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(20.h),
              OtpBoxField(
                otpController: otpController,
                onCompleted: (otp) {
                  otpValue = otp;
                },
              ),
              Gap(20.h),
              Text(
                _start.toString(),
                style: const TextStyle(
                  color: AppColors.progressBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
                bloc: _phoneAuthBloc,
                builder: (context, state) {
                  CodeModelResponse codeResponse = state.codeModelResponse
                      .getOrElse(() => CodeModelResponse());
                  if (codeResponse.verificationId?.isNotEmpty ?? false) {
                    widget.phoneAuthProviderModel?.codeModelResponse =
                        codeResponse;
                  }
                  return Text.rich(
                    TextSpan(
                      style: CommonTextStyle.normalStyle.copyWith(
                        color: AppColors.backButtonColor.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      children: [
                        const TextSpan(
                          text: AppString.didNotReceived,
                        ),
                        TextSpan(
                          text: AppString.resend,
                          style: CommonTextStyle.normalStyle.copyWith(
                            color: AppColors.redButtonColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _phoneAuthBloc.add(
                                PhoneAuthEvent.sendOtp(
                                  phoneNumberWithCode:
                                      widget.userData?.phone ?? '',
                                  authType: AuthType.PHONE,
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  );
                },
              ),
              Gap(30.h),
              CommonButton(
                onPressed: () {
                  if (otpController.text.isNotEmpty) {
                    widget.phoneAuthProviderModel?.otpCode = otpValue;
                    Logger.data(
                        "phoneAuth provider model data is1 ${widget.phoneAuthProviderModel?.codeModelResponse?.toJson()}");
                    Logger.data(
                        "phoneAuth provider model data is2 ${widget.phoneAuthProviderModel?.toJson()}");
                    String? fcmToken;
                    FirebaseMessaging.instance.getToken().then(
                      (token) {
                        Logger.data("token is $token");
                        fcmToken = token ?? '';
                      },
                    );
                    if(widget.pageType?.trim()=="LogInPage")
                    {
                      Logger.data("Login Page Bloc are run");
                      _getUserDataBloc.add(GetUserDataEvent.getUserDataByPhone(phoneNumber: widget.userData?.phone??'', authType: AuthType.PHONE,phoneAuthProviderModel:widget.phoneAuthProviderModel));
                    }
                    else{
                      Logger.data("Signup Page Bloc are run");
                      _signupBloc.add(
                        EmailSignUpEvent.createUser(
                          userData: widget.userData ?? UserData(),
                          phoneAuthProviderModel: widget.phoneAuthProviderModel,
                          authType: AuthType.PHONE,
                        ),
                      );
                    }
                  } else {
                    Logger.data("fields are not validate fully");
                  }
                  Logger.data("fields are not validate fully");
                },
                width: 140,
                height: 50,
                borderColor: AppColors.backButtonColor.withOpacity(0.5),
                btnColor: AppColors.redButtonColor,
                textStyle: CommonTextStyle.normalStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
                text: AppString.verifyOtpButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isLoading = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    otpController.dispose();
    _timer.cancel();
    super.dispose();
  }
}