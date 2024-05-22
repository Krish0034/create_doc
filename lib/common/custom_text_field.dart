import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../util/app_colors.dart';
import '../util/common_text_style.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {

  final String? label;
  final TextStyle? textStyle;
  final void Function()? onTap;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final  bool? readOnly;
  final TextInputType textInputType;
  final TextEditingController controller;
  final  Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function validator;
  final bool? obscureText;
  final bool isInputFormatters;
  final TextInputAction? textInputAction;
  final String? initialText;
  final Widget? suffixIcon;
  final EdgeInsets? contentPadding;
  final Widget? prefixIcon;
  final String? errorText;
  final String? hintText;
  final Color? fillColor;
  final Color? borderColor;
  final Color? suffixIconColor;
  final TextStyle? hinTextStyle;
  final TextStyle? errorTextStyle;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autoValidateMode;
  final BorderRadius? borderRadius;


  const CustomTextField(
      {this.prefixIcon,
      this.maxLength,
      this.textCapitalization,
      required this.controller,
      this.hintText,
      this.borderRadius,
      required this.textInputType,
      this.onTap,
      this.fillColor,
      this.suffixIconColor,
      this.borderColor,
      this.obscureText,
      required this.validator,
      this.onChanged,
      this.suffixIcon,
      this.readOnly,
      this.autoValidateMode,
      this.maxLines,
      this.label,
      this.textStyle,
      this.minLines,
      this.onSubmitted,
      this.inputFormatters,
      this.isInputFormatters=false,
      this.textInputAction,
      this.initialText,
      this.contentPadding,
      this.errorText,
      this.hinTextStyle,
      super.key, this.errorTextStyle
      });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Text(
            label!,
            textAlign: TextAlign.start,
            style: CommonTextStyle.normalStyle,
          ),
        if (label != null) const Gap(10),
        TextFormField(
          onTap: onTap,
          style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          maxLength: maxLength ?? 20,
          textCapitalization: textCapitalization ?? TextCapitalization.sentences,
          readOnly:  readOnly ?? false,
          keyboardType: textInputType,
          controller: controller,
          textAlign: TextAlign.left,
          onChanged:onChanged?? (value){},
          onFieldSubmitted: onSubmitted,
          validator: (value) => validator(value),
          obscureText: obscureText ?? false,
          inputFormatters: isInputFormatters == true ? null : inputFormatters ?? [],
          autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
          cursorColor: AppColors.backButtonColor,
          textInputAction: textInputAction,
          initialValue: initialText,
          autocorrect: false,
          enableSuggestions: false,
          decoration: InputDecoration(
            counterText: '',
            alignLabelWithHint: false,
            suffixIcon: suffixIcon,
            suffixIconColor: suffixIconColor ??AppColors.backButtonColor,
            contentPadding: contentPadding ?? const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
            prefixIcon: prefixIcon,
            errorText: errorText,
            hintText: hintText,
            isDense: false,
            filled: true,
            fillColor: fillColor ?? AppColors.whiteColor,
            hintStyle: hinTextStyle??CommonTextStyle.normalStyle.copyWith(
                color: Colors.black),
            errorStyle: errorTextStyle,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5.w,
                color: borderColor?? AppColors.backButtonColor,
              ), //<-- SEE HERE
              borderRadius: borderRadius ??
                  BorderRadius.circular(30.r),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5.w,
                color: borderColor?? AppColors.backButtonColor,
              ), //<-- SEE HERE
              borderRadius: borderRadius ??
                  BorderRadius.circular(30.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5.w,
                color: borderColor?? AppColors.backButtonColor,
              ), //<-- SEE HERE
              borderRadius: borderRadius ??
                  BorderRadius.circular(30.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5.w,
                color: borderColor ??AppColors.backButtonColor,
              ), //<-- SEE HERE
              borderRadius: borderRadius ??
                  BorderRadius.circular(30.r),
            ),
          ),
        )

      ],
    );
  }
}

class TextInputFormatterWithDecimal extends TextInputFormatter {
  final int maxDigits;

  TextInputFormatterWithDecimal({this.maxDigits = 2});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regExp = RegExp(r'^\d*\.?\d{0,' + maxDigits.toString() + r'}$');
    if (regExp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}
