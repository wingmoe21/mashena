import 'package:seba_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconsNotification,
          ),
        ),
      ),
    );
  }
}
