import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';
import 'package:seba_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:seba_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:seba_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:seba_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:seba_s_application1/widgets/custom_elevated_button.dart';
import 'package:seba_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable

class ContinueWithEMailScreen extends StatefulWidget {
  ContinueWithEMailScreen({Key? key}) : super(key: key);

  @override
  _ContinueWithEMailScreenState createState() =>
      _ContinueWithEMailScreenState();
}

class _ContinueWithEMailScreenState extends State<ContinueWithEMailScreen> {
  final TextEditingController searchController = TextEditingController();
  String? _errorText; // This will hold the error message

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme
                .onError, // Ensure `theme` is defined in your project
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical:
                        30.v), // Ensure `h` and `v` are defined in your project
                child: Column(children: [
                  _buildTwentyEight(context),
                  if (_errorText !=
                      null) // Conditionally display the error text
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 16.v), // Adjust padding as needed
                      child: Text(
                        _errorText!,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14), // Customize your error text style
                      ),
                    ),
                  SizedBox(
                      height: 83.v), // Ensure `v` is defined in your project
                  CustomElevatedButton(
                      text: "تسجيل الدخول",
                      onPressed: () {
                        if (_validateInput(searchController.text) == "valid") {
                          Navigator.pushNamed(
                              context,
                              AppRoutes
                                  .homePage); // Ensure `AppRoutes.appNavigationScreen` is defined in your project
                        } else {
                          // Update _errorText to display the error message and call setState to rebuild the widget
                          setState(() {
                            _errorText;
                          });
                        }
                      },
                      buttonStyle: CustomButtonStyles
                          .fillPrimary, // Ensure `CustomButtonStyles.fillPrimary` is defined in your project
                      buttonTextStyle: CustomTextStyles
                          .titleSmallOnPrimaryContainer), // Ensure `CustomTextStyles.titleSmallOnPrimaryContainer` is defined in your project
                  Spacer(flex: 35),
                  SizedBox(
                      width: 194.h, // Ensure `h` is defined in your project
                      child: Text("Don’t have account? Let’s create!",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer
                              .copyWith(
                                  height:
                                      1.43))), // Ensure `CustomTextStyles.titleSmallOnPrimaryContainer` is defined in your project
                  Spacer(flex: 64)
                ]))));
  }

  String? _validateInput(String input) {
    bool isValid = RegExp(r'^1\d{9}$').hasMatch(input);
    if (!isValid) {
      // If not valid, update _errorText with specific error messages
      if (input.isEmpty) {
        _errorText = "الرجاء ادخال السجل المدني";
      } else if (input.length != 10) {
        _errorText = "يجب ان يكون طول المدخل 10 خانات";
      } else if (!input.startsWith('1')) {
        _errorText = "رقم الهوية غير صحيح";
      } else {
        _errorText = "يجب ان يكون المدخل مجرد ارقام";
      }
    } else {
      _errorText = "valid"; // Clear error message if input is valid
    }
    return _errorText;
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 72.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftRed50,
            margin: EdgeInsets.only(left: 24.h, top: 32.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "مرحباً بك ",
              margin: EdgeInsets.only(left: 24.h, top: 34.v, right: 15.h)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconsNotification,
              margin: EdgeInsets.only(left: 16.h, top: 32.v, right: 39.h))
        ],
        styleType: Style.bgOutline);
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return SizedBox(
        height: 75.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomTextFormField(
              width: 345.h,
              controller: searchController,
              hintText: "رقم الهوية",
              textInputAction: TextInputAction.done,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topRight,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("رقم الهوية", style: theme.textTheme.titleLarge),
                    CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin:
                            EdgeInsets.only(left: 1.h, top: 3.v, bottom: 10.v))
                  ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
