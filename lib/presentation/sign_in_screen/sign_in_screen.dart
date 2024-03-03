import 'package:seba_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.green300,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.green300,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignIn,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 49.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 296.v,
                  width: 310.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalculator,
                        height: 80.v,
                        width: 77.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 12.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 90.v,
                              width: 162.h,
                              margin: EdgeInsets.only(right: 10.h),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 64.adaptSize,
                                      width: 64.adaptSize,
                                      decoration: AppDecoration
                                          .fillSecondaryContainer
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder32,
                                      ),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.img383Ted0689Teddy,
                                        height: 64.adaptSize,
                                        width: 64.adaptSize,
                                        radius: BorderRadius.circular(
                                          32.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgChatPopup,
                                    height: 40.v,
                                    width: 140.h,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 80.v,
                                width: 192.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 80.adaptSize,
                                        width: 80.adaptSize,
                                        decoration:
                                            AppDecoration.fillIndigo.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder40,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .img396Mckinsey21a0488Jir1,
                                          height: 80.v,
                                          width: 66.h,
                                          radius: BorderRadius.circular(
                                            40.h,
                                          ),
                                          alignment: Alignment.centerLeft,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgChatPopup,
                                      height: 40.v,
                                      width: 140.h,
                                      radius: BorderRadius.circular(
                                        20.h,
                                      ),
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            SizedBox(
                              height: 92.v,
                              width: 198.h,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgChatPopup,
                                    height: 40.v,
                                    width: 140.h,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 1.v,
                                      width: 2.h,
                                      margin: EdgeInsets.only(
                                        left: 40.h,
                                        top: 18.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillIndigo50.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder1,
                                      ),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPhilipMartin5,
                                        height: 1.v,
                                        width: 2.h,
                                        radius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUnnamed2,
                                    height: 78.v,
                                    width: 74.h,
                                    radius: BorderRadius.circular(
                                      37.h,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "تسجيل الدخول ",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.continueWithEMailScreen);
                  },
                  margin: EdgeInsets.only(right: 6.h),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowleft,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                ),
                SizedBox(height: 75.v),
                Container(
                  width: 290.h,
                  margin: EdgeInsets.only(
                    left: 31.h,
                    right: 28.h,
                  ),
                  child: Text(
                    "By continuing you agree Terms of Services & Privacy Policy ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.bodySmallSecondaryContainer.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
