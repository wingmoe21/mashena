import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w300,
      );
  // Title text style
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallIndigoA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA200,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );

  // Body text style
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Title text style
  static get titleSmallAmberA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}
