import 'package:create_doc/util/logger.dart';
import 'package:create_doc/util/usern_name_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/custom_text_field.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/auth_type.dart';
import '../../bloc/user_name_bloc/user_name_bloc.dart';

class UserDetailsFields extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController userNameController;
  final AuthType authType;
  const UserDetailsFields({
    super.key,
    required this.nameController,
    required this.userNameController,
    required this.authType,
  });

  @override
  State<UserDetailsFields> createState() => _UserDetailsFieldsState();
}

class _UserDetailsFieldsState extends State<UserDetailsFields> {

  late List<String> generatedUserNames=[];
  late UserNameBloc _userNameBloc;
  late bool userNameExist=false;
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
        generatedUserNames.clear();
        if (state.userName) {
          userNameExist = state.userName;
          Logger.data("user name Exist is ${userNameExist}");
          if (userNameExist && generatedUserNames.isEmpty) {
            generatedUserNames = UserNameGenerator.generateList(widget.userNameController.text, length: 10);
          }
          else{
              generatedUserNames.clear();
          }
        }
        return Column(
          children: [
            CustomTextField(
              label: AppString.nameHintText,
              controller: widget.nameController,
              hint: AppString.nameHintText,
              inputType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return AppString.fullNameValidatorText;
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 25.h),
            CustomTextField(
              label: AppString.userNameHintText,
              controller: widget.userNameController,
              hint: AppString.userNameHintText,
              inputType: TextInputType.text,
              onChanged: (value) {
                generatedUserNames.clear();
              },
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  generatedUserNames.clear();
                  return AppString.userNameValidatorText;

                } else {
                  if (value.length >= 3 && generatedUserNames.isEmpty) {
                    _userNameBloc.add(
                      UserNameEvent.userExist(
                        userName: widget.userNameController.text,
                        authType: widget.authType,
                      ),
                    );
                  }

                  return null;
                }
              },
            ),
            if (userNameExist && generatedUserNames.isNotEmpty)
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 5.w,
                  children: generatedUserNames.map(
                        (e) => GestureDetector(
                      onTap: () {
                        widget.userNameController.text;
                        generatedUserNames.clear();
                      },
                      child: Theme(
                        data: ThemeData(
                          primaryColor: AppColors.backButtonColor,
                          primaryColorDark: AppColors.redButtonColor,
                        ),
                        child: Chip(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: AppColors.redButtonColor,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white,
                          label: Text(
                            e,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: "DmSans",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
          ],
        );
      },
    );
  }

}
