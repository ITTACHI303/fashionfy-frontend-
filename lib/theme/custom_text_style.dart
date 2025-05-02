import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeGray50001 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static TextStyle get bodyMediumBluegray800 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800.withOpacity(0.5),
      );
  static TextStyle get bodyMediumGray60001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static TextStyle get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
// Headline text style
  static TextStyle get headlineSmallTeal500 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal500,
      );
// Label text style
  static TextStyle get labelLargeBlack900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeBlack900Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeBluegray400 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeGray60001 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeMedium_1 =>
      theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeOpenSansWhiteA700 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargePoppinsBluegray300 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelSmallBlack900 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelSmallGray400 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray400,
      );
  static get labelSmallOpenSans => theme.textTheme.labelSmall!.openSans;
// Title text style
  static TextStyle get titleMediumBlack90001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static TextStyle get titleMediumInterGray600 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratBlack900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumMontserratBlack90017 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static TextStyle get titleMediumMontserratBlack900Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumMontserratBlack900ExtraBold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleMediumMontserratBlack900Medium =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratBlack900Medium16 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratBlack900Medium16_1 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratBlack900Medium19 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratBold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumMontserratMedium =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMontserratPrimary =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallBlack900Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallGray100 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}
