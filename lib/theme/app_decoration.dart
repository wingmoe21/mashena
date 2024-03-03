import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green300,
      );
  static BoxDecoration get fillGreen600 => BoxDecoration(
        color: appTheme.green600,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get fillIndigo50 => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray500,
      );

  // Gradient decorations
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.green900,
            appTheme.green900.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray800,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo9000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              58,
              26,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray8001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray800,
          width: 2.h,
        ),
      );

  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              58,
              26,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlackF => BoxDecoration();

  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray50,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray501 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
