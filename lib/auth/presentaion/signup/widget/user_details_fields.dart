import 'package:create_doc/util/usern_name_generator.dart';
import 'package:create_doc/util/validator_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../common/custom_text_field.dart';
import '../../../../di/di_setup.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';
import '../../../../util/auth_type.dart';
import '../../../../util/common_text_style.dart';
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
        final userNameExist = state.userName;
        if (userNameExist && generatedUserNames.isEmpty && widget.userNameController.text.isNotEmpty) {
          generatedUserNames = UserNameGenerator.generateList(widget.userNameController.text, length: 7);
        } else if (!userNameExist) {
          generatedUserNames.clear();
        }

        return Column(
          children: [
            CustomTextField(
              label: AppString.nameHintText,
              controller: widget.nameController,
              hintText: AppString.nameHintText,
              textInputType: TextInputType.text,
              borderRadius: BorderRadius.circular(10.r),
              hinTextStyle:CommonTextStyle.normalStyle.copyWith(
                  color:  Colors.black.withOpacity(0.4),),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return AppString.fullNameValidatorText;
                } else {
                  return null;
                }
              },
            ),
            Gap(25.h),
            CustomTextField(
              label: AppString.userNameHintText,
              controller: widget.userNameController,
              hintText: AppString.userNameHintText,
              textInputType: TextInputType.text,
              borderRadius: BorderRadius.circular(10.r),
              hinTextStyle:CommonTextStyle.normalStyle.copyWith(
                color:  Colors.black.withOpacity(0.4),),
              onChanged: (value) {
                generatedUserNames.clear();
              },
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  generatedUserNames.clear();
                  return AppString.userNameValidatorText;
                } else {
                  if (ValidatorFields().isUsername(value)) {
                    _userNameBloc.add(
                      UserNameEvent.userExist(
                        userName: widget.userNameController.text,
                        authType: widget.authType,
                      ),
                    );
                  } else {
                    return AppString.userNameValidatorText2;
                  }
                  return null;
                }
              },
            ),
            if (userNameExist)
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 5.w,
                  alignment: WrapAlignment.start,
                  children: generatedUserNames.map(
                        (e) => GestureDetector(
                      onTap: () {
                        widget.userNameController.text = e;
                        _userNameBloc.add(
                          UserNameEvent.userExist(
                            userName: e,
                            authType: widget.authType,
                          ),
                        );
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
