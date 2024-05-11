
import 'package:flutter/material.dart';

import '../util/app_colors.dart';

class CustomDecorators {
  late OutlineInputBorder _border, _errorBorder;
  late BuildContext _context;

  CustomDecorators(BuildContext context) {
    _context = context;
    _border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.backButtonColor,
        width: 1,
      ),
    );
    _errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.redButtonColor,
        width: 1,
      ),
    );
  }

  InputDecoration getInputDecoration(
      String text, {
        String? errorText,
        Widget? suffix,
        Widget? prefix,
        Color? fillColor,
        Color? borderColor,
        TextStyle? hintStyle,
        bool isReadOnly = false,
        bool showCounterText = false,

      }) {
    return InputDecoration(
      isDense: true,
      filled: true,
      fillColor: fillColor ?? AppColors.whiteColor,
      errorText: errorText,
      counterText: showCounterText ? null : "",
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      hintText: text,
      hintStyle: hintStyle ??
          Theme.of(_context).textTheme.titleMedium!.copyWith(
            color: AppColors.backButtonColor,
          ),
      prefixIconConstraints: prefix == null
          ? null
          : const BoxConstraints(
        maxWidth: 38,
      ),
      suffixIcon: suffix,
      prefixIcon: prefix,
      errorStyle: Theme.of(_context).textTheme.titleSmall!.copyWith(
        color: AppColors.redButtonColor,
      ),
      errorMaxLines: 2,
      focusedBorder: _border.copyWith(
        borderSide: BorderSide(color: borderColor ?? AppColors.backButtonColor),
      ),
      focusedErrorBorder: _errorBorder,
      enabledBorder: _border.copyWith(
        borderSide: BorderSide(color: borderColor ?? AppColors.backButtonColor),
      ),
      errorBorder: _errorBorder,
      disabledBorder: _border.copyWith(
        borderSide: BorderSide(color: borderColor ?? AppColors.backButtonColor),
      ),
    );
  }
}