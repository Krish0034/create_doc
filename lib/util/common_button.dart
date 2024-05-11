import 'dart:async';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'common_text_style.dart';

class CommonButton extends StatefulWidget {
  final String? text;
  final Color? btnColor;
  final Color? borderColor;
  final Function? onPressed;
  final IconData? iconData;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  const CommonButton({
    super.key,
    this.text,
    this.btnColor,
    this.height,
    this.width,
    this.textStyle,
    this.borderColor,
    this.iconData,
    this.onPressed,
  });

  @override
  CommonButtonState createState() => CommonButtonState();
}

class CommonButtonState extends State<CommonButton> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void buttonHandler() {
    _controller.forward();
    Timer(const Duration(milliseconds: 50), () {
      _controller.reverse();
    });
    Timer(const Duration(milliseconds: 50), () {
      widget.onPressed!();
    });
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Transform.scale(
      scale: _scale,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.btnColor,
          minimumSize: const Size(80.0, 50.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: widget.borderColor ?? AppColors.backButtonColor.withOpacity(0.4),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: widget.onPressed as void Function()? ?? () {},
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Center(
            child: Text(
              widget.text??'',
              style: widget.textStyle??CommonTextStyle.buttonStyle,
            ),
          ),
        ),
      ),
    );
  }
}
