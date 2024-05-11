
import 'package:create_doc/dashbord/presentaion/widgets/bottom_nav_bar_button.dart';
import 'package:create_doc/doc_module/doc_page.dart';
import 'package:create_doc/home/home_page.dart';
import 'package:create_doc/upload_module/upload_page.dart';
import 'package:create_doc/user_profile/user_profile_page.dart';
import 'package:create_doc/util/app_colors.dart';
import 'package:create_doc/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/app_images.dart';
import '../../util/app_strings.dart';


class DashBordPage extends StatefulWidget {
  const DashBordPage({super.key});

  @override
  State<DashBordPage> createState() => _DashBordPageState();
}

class _DashBordPageState extends State<DashBordPage> {
  int pageIndex=0;
  List<Widget> pages=const [
    HomePage(),
    DocPage(),
    UploadPage(),
    UserProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20.h),
        height: 120.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.backButtonColor.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
          color: Colors.lightBlueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.w),
            topRight: Radius.circular(25.w),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavBarButton(
                name: AppString.home,
                imageUrl:pageIndex==0? AppImages.homeGreen:AppImages.home,
                onTap: () {
                  setState(() {
                    pageIndex=0;
                    Logger.data("home tap");
                  });
                  Logger.data("Tapped index: $pageIndex");
                },
              ),
              BottomNavBarButton(
                name: AppString.doc,
                width:29.w,
                height:29.w,
                imageUrl: pageIndex==1?AppImages.docGreen:AppImages.doc,
                onTap: () {
                  setState(() {
                    pageIndex=1;
                    Logger.data("home tap1");
                  });
                  Logger.data("Tapped index: $pageIndex");
                },
              ),
              BottomNavBarButton(
                name: AppString.upload,
                width:35.w,
                height:35.w,
                imageUrl:pageIndex==2? AppImages.uploadGreen:AppImages.upload,
                onTap: () {
                  setState(() {
                    pageIndex=2;
                    Logger.data("home tap2");
                  });
                  Logger.data("Tapped index: $pageIndex");
                },
              ),
              BottomNavBarButton(
                name: AppString.profile,
                width:35.w,
                height:35.w,
                imageUrl:pageIndex==3? AppImages.userProfileGreen: AppImages.userProfile,
                onTap: () {
                  setState(() {
                    pageIndex=3;
                    Logger.data("home tap3");
                  });
                  Logger.data("Tapped index: $pageIndex");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
