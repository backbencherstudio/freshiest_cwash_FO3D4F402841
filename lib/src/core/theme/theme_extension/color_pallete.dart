import 'package:flutter/material.dart';

class AppColor {
  static const Color screenBackgroundColor = Colors.white;
  static const Color primary = Color(0xff1E90FF);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xffF4F4F4);
  static const Color onSecondary = Color.fromRGBO(0, 0, 0, 0.50);
  static const Color error = Colors.red;
  static const Color textColor = Colors.black;
  static const Color secondaryTextColor = onSecondary;
  static const Color bottomNavBarIconColor = Color(0xff484C52);
  static const Color surface = Color.fromRGBO(0, 0, 0, 0.50);
  static const Color onSurface = onSecondary;

  static const Color borderColor = Color(0xffC9C9C9);
  static const Color dividerColor = Color(0xffC9C9C9);

  // ColorScheme for light theme
  static ColorScheme lightColorScheme = ColorScheme.light(
    primary: primary,
    secondary: secondary,
    surface: surface,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onError: Colors.white,
    brightness: Brightness.light,
  );
}
