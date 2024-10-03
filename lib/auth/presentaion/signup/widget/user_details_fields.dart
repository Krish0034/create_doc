import 'package:create_doc/util/logger.dart';
import 'package:db_username_suggester/db_username_suggester.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../common/custom_text_field.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/validator_fields.dart';
import '../../bloc/user_name_bloc/user_name_bloc.dart';

class UserDetailsFields extends StatefulWidget {
  final TextEditingController nameController;
  // final TextEditingController userNameController;
  final AuthType authType;
  const UserDetailsFields({
    super.key,
    required this.nameController,
    required this.authType,
  });

  @override
  State<UserDetailsFields> createState() => _UserDetailsFieldsState();
}

class _UserDetailsFieldsState extends State<UserDetailsFields> {
  late UserNameBloc _userNameBloc;
  bool userNameExist = false; /// Track username existence status
  // String suggestedUsername = "";
  @override
  void initState() {
    _userNameBloc = getIt<UserNameBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserNameBloc, UserNameState>(
      bloc: _userNameBloc,
      builder: (context, state) {
        // var userNameExist = state.userName;
        // Logger.data("User name state is ${userNameExist}");
        // f (state) {
          userNameExist = state.userName;
          if (userNameExist) {
            // suggestedUsername = state.suggestedUserName;
          }
          Logger.data("User name state is ${userNameExist}");
        // }
        return Column(
          children: [
            CustomTextField(
              label: AppString.nameHintText,
              controller: widget.nameController,
              hintText: AppString.nameHintText,
              textInputType: TextInputType.text,
              borderRadius: BorderRadius.circular(10.r),
              // hinTextStyle:CommonTextStyle.normalStyle.copyWith(
              //     color:  Colors.black.withOpacity(0.4),),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return AppString.fullNameValidatorText;
                } else {
                  return null;
                }
              },
            ),
            Gap(25.h),
            DbUsernameSuggesterField(
              label: "Username",
              validator: (value) {
                if (value!.isEmpty) {
                  return AppString.userNameValidatorText;
                } else {
                  if (ValidatorFields().isUsername(value)) {

                  } else {
                    return AppString.userNameValidatorText2;
                  }
                  return null;
                }
              },
              checkUsernameInDb: (username) async {
                Logger.data("Username state in checkUsernameInDb: $userNameExist");

                // Replace with actual DB check logic
                _userNameBloc.add(
                  UserNameEvent.userExist(
                    userName: username,
                    authType: widget.authType,
                  ),
                );

                // Return current state of existence
                return userNameExist;
              },
              textCapitalization: TextCapitalization.none,
              onChange: (value) {
                /// Reset suggested username when typing
                // setState(() {
                //    = "";
                // });
                print('Username changed: $value');
              },
              borderRadius: BorderRadius.circular(10),
              hintText: "Please Enter Username.",
              hintTextStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)),
              borderColor: Colors.green,
            ),

          ],
        );
      },
    );
  }




}
