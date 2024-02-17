import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/app_images.dart';

class ImageWidget extends StatelessWidget {
  final String? imageUlr;
  final double? width;
  final double? height;

  const ImageWidget({Key? key, this.width, this.height,this.imageUlr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?? 200,
      height: height??240,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              imageUlr??'',
            ),
          fit: BoxFit.cover
        ),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
    );
  }
}
