import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

class SplashScreanScreen extends StatelessWidget {
  const SplashScreanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToSecondPage() {
        Navigator.pushNamed(context,AppRoutes.signInScreen);
    }

    Timer(Duration(seconds: 3), navigateToSecondPage);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.green900,
                appTheme.green900.withOpacity(0),
              ],
            ),
          ),
          child: Container(
            width: 380.h,
            padding: EdgeInsets.symmetric(horizontal: 48.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImg1416RemovebgPreview,
                  height: 247.v,
                  width: 283.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}