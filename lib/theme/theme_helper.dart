import 'package:flutter/material.dart';

import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.h),
          ),
          shadowColor: appTheme.gray60033,
          elevation: 5,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray10001,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 9.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 28.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 11.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 8.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w800,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 18.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFB30B00),
    primaryContainer: Color(0XFF59C36A),
    errorContainer: Color(0X264B4B4B),
    onErrorContainer: Color(0XFF0A0615),
    onPrimary: Color(0XFFF8FAFC),
    onPrimaryContainer: Color(0XFF1D1C1C),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
  Color get black90001 => Color(0XFF040500);
// Blue
  Color get blueA200 => Color(0XFF4086F4);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD8D8DD);
  Color get blueGray300 => Color(0XFF969AA8);
  Color get blueGray400 => Color(0XFF8B8B8B);
  Color get blueGray800 => Color(0XFF404B52);
  Color get blueGray900 => Color(0XFF363232);
// DeepOrange
  Color get deepOrangeA400 => Color(0XFFF03800);
// Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray10001 => Color(0XFFF6F6F6);
  Color get gray10002 => Color(0XFFF6F4F4);
  Color get gray200 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFDDDDDD);
  Color get gray400 => Color(0XFFBFB3AD);
  Color get gray40001 => Color(0XFFC9C9C9);
  Color get gray500 => Color(0XFF9299A3);
  Color get gray50001 => Color(0XFFADADAD);
  Color get gray50Ea => Color(0XEAF8F8F8);
  Color get gray600 => Color(0XFF757575);
  Color get gray60001 => Color(0XFF7C7A7A);
  Color get gray60033 => Color(0X337F7F7F);
  Color get gray800 => Color(0XFF505050);
  Color get gray900 => Color(0XFF121111);
// Green
  Color get greenA700 => Color(0XFF1DF14B);
// Indigo
  Color get indigo50 => Color(0XFFE5E9EF);
  Color get indigoA400 => Color(0XFF376AED);
// IndigoA
  Color get indigoA2007f => Color(0X7F6E70FB);
// LightBlueA
  Color get lightBlueA4007f => Color(0X7F03B3FF);
// PinkA
  Color get purple => Color(0XFF6E71FC);
  // Purple
  Color get pinkA4007f => Color(0X7FFF0385);
// RedA
  Color get redA7007f => Color(0X7FE60F0F);
// Teal
  Color get teal500 => Color(0XFF00A66C);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get whiteA70001 => Color(0XFFFDFDFF);
// WhiteA
  Color get whiteA7003f => Color(0X3FFFFDFD);
// Yellow
  Color get yellow600 => Color(0XFFFFDA2D);
  Color get yellow900 => Color(0XFFFF7F23);
// YellowA
  Color get yellowA7007f => Color(0X7FE6DF0F);
}
