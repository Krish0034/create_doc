import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../onbording/widget/image_widget.dart';

@immutable
class BottomNavBarButton extends StatelessWidget {
  BottomNavBarButton({super.key,this.onTap,this.imageUrl,this.name,this.width,this.height});
  String? imageUrl;
  String? name;
  double? width;
  double? height;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap??(){},
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWidget(
            imageUlr: imageUrl,
            width: width??40.w,
            height:height?? 40.h,
          ),
          Text(name??''),
        ],
      ),
    );
  }
}

