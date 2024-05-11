import 'package:create_doc/util/common_icon_button.dart';
import 'package:create_doc/util/common_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@immutable
class SettingTextButton extends StatelessWidget {
  String? icon;
  String? text;
  void Function()? onTap;

  SettingTextButton({super.key,this.onTap,this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap??(){},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CommonIconButton(
              icon: icon ?? '',
              width: 40,
              height: 40,
            ),
          ),

          Gap(10.w),
          Text(text??'',style: CommonTextStyle.normalStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w300),)
        ],
      ),
    );
  }
}
