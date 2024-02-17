import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../common/custom_text_field.dart';
import '../../../../util/app_colors.dart';
import '../../../../util/app_strings.dart';

class UserDetailsFields extends StatefulWidget {

  final TextEditingController nameController;
  final TextEditingController userNameController;

  const UserDetailsFields({super.key, required this.nameController,  required this.userNameController});


  @override
  State<UserDetailsFields> createState() => _UserDetailsFieldsState();
}

class _UserDetailsFieldsState extends State<UserDetailsFields> {

  late List<String> generatedUserNames=[];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            label: AppString.nameHintText,
            controller: widget.nameController,
            hint: AppString.nameHintText,
            inputType: TextInputType.text,
            validator: (value){
              if(value!.isEmpty||value==null)
              {
                return AppString.fullNameValidatorText;
              }
              else{
                return null;
              }
            }
        ),
        const Gap(25),
        CustomTextField(
            label: AppString.userNameHintText,
            controller:widget.userNameController,
            hint: AppString.userNameHintText,
            inputType: TextInputType.text,
            validator: (value){
              if(value!.isEmpty||value==null)
              {
                return AppString.userNameValidatorText;
              }
              else{
                return null;
              }
            }
        ),
        Wrap(
            spacing: 5.w,
            children: generatedUserNames
                .map((e) => GestureDetector(
              onTap: () {
                // controller.userName(TextEditingController(text: e));
                // controller.generatedUsernasme.clear();
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
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white,
                      label: Text(
                        e,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: "DmSans",
                        ),
                      ),),),
            ),)
                .toList())
      ],
    );
  }


  List<String> generateList(String emailOrName, {List<String> adjectives = const [], DateTime? date, int length = 1}) {
    var usernames = <String>[];
    for (var i = 0; i < length; i++) {
      usernames.add(generate(emailOrName, adjectives: adjectives, date: date));
    }
    return usernames;
  }

  String generate(String emailOrName, {List<String> adjectives = const [], DateTime? date}) {
    if (emailOrName.contains('@')) {
      emailOrName = emailOrName.substring(0, emailOrName.indexOf('@')).replaceAll(RegExp(r'[^a-zA-Z\d]'), '');
    }
    emailOrName = emailOrName.trim().replaceAll(RegExp(r'[^a-zA-Z\d\s]'), ' ').replaceAll(RegExp(r'\s{2,}'), ' ').replaceAll(' ', '_');
    var dateString = '';
    if (date != null) {
      dateString = date.year.toString().substring(2);
    }

    var adjective = '';
    if (adjectives != null && adjectives.isNotEmpty) {
      adjective = _getRandomElement(adjectives);
    }

    var numberString = '';
    if (dateString.isEmpty) {
      numberString = Random().nextInt(100).toString();
    }

    return [adjective, emailOrName, dateString, numberString]
        .where((element) => element != null && element.isNotEmpty)
        .join('_')
        .toLowerCase();
  }

  String _getRandomElement(List<String> list) {
    final random = Random();
    final randomIndex = random.nextInt(list.length);
    return list[randomIndex];
  }

}
