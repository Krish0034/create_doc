import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../util/app_colors.dart';
import '../util/common_text_style.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.prefixIcon,
      this.maxLength,
      this.textCapitalization = false,
      this.textLimitLength,
      this.autoFocus,
      this.focusNode,
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
      this.hintColorOpticity = false,
      this.autoValidateMode,
      this.outlinedBorder,
      this.maxLines,
      this.label,
      this.suffixText,
      super.key});

  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  bool? obscureText;
  final Function validator;
  Function(String)? onChanged;
  void Function()? onTap;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool? readOnly;
  bool? hintColorOpticity;
  AutovalidateMode? autoValidateMode;
  InputBorder? outlinedBorder;
  int? maxLines;
  int? maxLength;
  FocusNode? focusNode;
  int? textLimitLength;
  int? maxDecimalDigits;
  late bool textCapitalization = false;
  String? label;
  String? suffixText;
  Color? fillColor;
  bool? autoFocus;
  GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    return FormField(builder: (state) {
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
            maxLength: maxLength,
            cursorColor: AppColors.backButtonColor,
            maxLines: maxLines ?? 1,
            focusNode: focusNode,
            readOnly: readOnly ?? false,
            obscureText: obscureText ?? false,
            textCapitalization: textCapitalization
                ? TextCapitalization.sentences
                : TextCapitalization.none,
            autovalidateMode:
                autoValidateMode ?? AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: inputType,
            style: CommonTextStyle.normalStyle,
            onTap:onTap??() {},
            decoration: InputDecoration(
              counterText: '',
              prefixIcon: prefixIcon,
              prefixText: suffixText,
              prefixStyle: CommonTextStyle.normalStyle,
              filled: true,
              enabledBorder: outlinedBorder ??
                  OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.backButtonColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              isDense: false,
              focusColor: Colors.white,
              border: outlinedBorder ??
                  OutlineInputBorder(
                    borderSide: readOnly != null
                        ? !readOnly!
                            ? const BorderSide(
                                color: AppColors.backButtonColor,
                                width: 1,
                              )
                            :  const BorderSide(
                      color: AppColors.backButtonColor,
                      width: 1,
                    )
                        :  const BorderSide(
                      color: AppColors.backButtonColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
              errorBorder: OutlineInputBorder(
                borderSide:  const BorderSide(
                  color: AppColors.backButtonColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: outlinedBorder ??
                  OutlineInputBorder(
                    borderSide:  const BorderSide(
                      color: AppColors.backButtonColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
              fillColor: fillColor ?? AppColors.whiteColor,
              suffixIcon: suffixIcon,
              hintStyle: readOnly != null
                  ? !readOnly!
                      ?CommonTextStyle.normalStyle
                      : CommonTextStyle.normalStyle.copyWith(
                          color: hintColorOpticity!
                              ? Colors.black.withOpacity(0.4)
                              : Colors.black)
                  : CommonTextStyle.normalStyle,
              hintText: hint,
            ),
            inputFormatters: textLimitLength != null
                ? [
                    LengthLimitingTextInputFormatter(textLimitLength),
                    TextInputFormatterWithDecimal(
                      maxDigits: maxDecimalDigits ?? 2,
                    ),
                  ]
                : [],
            validator: (value) => validator(value),
            onChanged:onChanged?? (value){},
          ),

        ],
      );
    },
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
