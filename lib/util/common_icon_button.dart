import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  String? icon;
  VoidCallback? onPressed;
  Color? color;
  double? width;
  double? height;

  CommonIconButton({super.key,
    this.icon,
    this.width,
    this.height,
    this.onPressed,
    this.color,
  }) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Image.asset(
        icon??'',
        width: width??10,
        height: height??10,
        color: color,
      ),
    );
  }
}
