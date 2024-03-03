import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ContentItemWidget extends StatelessWidget {
  const ContentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray800,
                width: 2.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              height: 36.adaptSize,
              width: 36.adaptSize,
              decoration: AppDecoration.outlineGray8001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          18.h,
                        ),
                        border: Border.all(
                          color: appTheme.red200,
                          width: 2.h,
                        ),
                      ),
                    ),
                  ),
                  _buildEleven(
                    context,
                    zero: "%0",
                    emoji: "",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 2.v,
            ),
            child: _buildText(
              context,
              title: "مهند",
              description: "912 نقطة",
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEleven(
    BuildContext context, {
    required String zero,
    required String emoji,
  }) {
    return SizedBox(
      height: 27.v,
      width: 14.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              zero,
              style: CustomTextStyles.bodySmallGray500.copyWith(
                color: appTheme.gray50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              emoji,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildText(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray800,
          ),
        ),
        Text(
          description,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray500,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildText1(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return SizedBox(
      height: 40.v,
      width: 48.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              description,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
