import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../util/app_colors.dart';
import '../util/common_text_style.dart';
import 'custom_decorator_box.dart';


class CustomTextFormField extends StatefulWidget {
  final String placeholder;
  final int maxLength;
  final int maxLines;
  final int minLines;
  final TextInputType textInputType;
  final Function onValidate;
  final ValueChanged<String?>? onTextChanged;
  final bool isPassword;
  final bool numberOnly;
  final bool isReadOnly;
  final bool showCounterText;
  final bool errorBackgroundSameAsFill;
  final String? initialValue;
  final TextAlign textAlign;
  final TextCapitalization textCapitalization;
  final TextEditingController? textEditingController;
  final Widget? prefixIcon;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? hintStyle;
  final TextInputAction? textInputAction;

  const CustomTextFormField({
    super.key,
    required this.placeholder,
    required this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    required this.textInputType,
    required this.onValidate,
    this.isPassword = false,
    this.numberOnly = false,
    this.isReadOnly = false,
    this.errorBackgroundSameAsFill = false,
    this.showCounterText = false,
    this.initialValue,
    this.onTextChanged,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.textEditingController,
    this.prefixIcon,
    this.fillColor,
    this.borderColor,
    this.hintStyle,
    this.textInputAction,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.errorBackgroundSameAsFill
          ? widget.fillColor
          : Colors.transparent,
      child: TextFormField(
        validator: (value) {
          return widget.onValidate(value);
        },
        controller: widget.textEditingController,
        textAlign: widget.textAlign,
        style: CommonTextStyle.buttonStyle,
        maxLines: widget.minLines > widget.maxLines
            ? widget.minLines
            : widget.maxLines,
        minLines: widget.minLines,
        cursorColor: AppColors.backButtonColor,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLength,
        readOnly: widget.isReadOnly,
        initialValue: widget.initialValue,
        enabled: !widget.isReadOnly,
        onChanged: widget.onTextChanged,
        textInputAction: widget.textInputAction,
        inputFormatters: <TextInputFormatter>[
          if (widget.numberOnly)
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        textCapitalization: widget.textCapitalization,
        textAlignVertical: TextAlignVertical.center,
        obscureText: widget.isPassword ? !_passwordVisible : false,
        decoration: CustomDecorators(context).getInputDecoration(
          widget.placeholder,
          isReadOnly: widget.isReadOnly,
          fillColor: widget.fillColor,
          borderColor: widget.borderColor,
          hintStyle: widget.hintStyle,
          showCounterText: widget.showCounterText,
          prefix: widget.prefixIcon,
          suffix: widget.isPassword
              ? IconButton(
            iconSize: 16,
            icon: Icon(
              !_passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.backButtonColor,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
