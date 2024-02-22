import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../util/app_colors.dart';
import '../util/common_text_style.dart';
import '../util/app_strings.dart';

class CustomPhoneTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool? obscureText;
  final Function validator;
  final Function? onChanged;
  final Function? onTap;
  final Widget? suffixIcon;
  final bool? readOnly;
  final AutovalidateMode? autoValidateMode;
  final InputBorder? outlinedBorder;
  final int? maxLines;
  final String? label;
  final String? suffixText;
  final Color? fillColor;
  final GlobalKey<FormState>? formKey;

  const CustomPhoneTextField({
    this.formKey,
    required this.controller,
    required this.hint,
    required this.inputType,
    this.onTap,
    this.fillColor,
    this.obscureText,
    required this.validator,
    this.onChanged,
    this.suffixIcon,
    this.readOnly,
    this.autoValidateMode,
    this.outlinedBorder,
    this.maxLines,
    this.label,
    this.suffixText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (label != null) ...[
              Text(
                label!,
                textAlign: TextAlign.start,
                style: CommonTextStyle.normalStyle,
              ),
              const Gap(10),
            ],
            Theme(
              data: ThemeData(),
              child: IntlPhoneField(
                dropdownIconPosition: IconPosition.trailing,
                dropdownTextStyle: CommonTextStyle.normalStyle.copyWith(
                  color: AppColors.backButtonColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlignVertical: const TextAlignVertical(y: 0.2),
                flagsButtonPadding: EdgeInsets.only(left: 5.w, right: 0, top: 10.h, bottom: 10.h,),
                initialCountryCode: "IN",
                dropdownIcon: const Icon(
                  Icons.expand_circle_down_rounded,
                  color: AppColors.backButtonColor,
                ),
                invalidNumberMessage: AppString.phoneValidatorText,
                pickerDialogStyle: PickerDialogStyle(
                  backgroundColor: Colors.white,
                  countryCodeStyle: CommonTextStyle.normalStyle.copyWith(
                    color: AppColors.backButtonColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                cursorColor: Colors.black,
                readOnly: readOnly ?? false,
                obscureText: obscureText ?? false,
                autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
                controller: controller,
                keyboardType: inputType,
                style: CommonTextStyle.normalStyle.copyWith(
                  color: AppColors.backButtonColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                onTap: () {
                  if (onTap != null) {
                    onTap!();
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                  counter: const SizedBox(),
                  prefixText: suffixText,
                  prefixStyle: CommonTextStyle.normalStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  filled: true,
                  enabledBorder: outlinedBorder ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                  isDense: true,
                  focusColor: Colors.white,
                  border: outlinedBorder ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color: readOnly != null && !readOnly!
                              ? Colors.black
                              : Colors.transparent,
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.backButtonColor,
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: outlinedBorder ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                  fillColor: fillColor ?? AppColors.whiteColor,
                  suffixIcon: suffixIcon,
                  hintStyle: CommonTextStyle.normalStyle.copyWith(
                    color: AppColors.backButtonColor.withOpacity(0.5),
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                  hintText: hint,
                ),
                validator: (value) => validator(value),
                onChanged: (value) {
                  if (onChanged != null) {
                    onChanged!(value);
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
