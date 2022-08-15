import 'package:auth_ui_flutter/utils/exports.dart';

class AppTheme {
  // Colors
  static const kPrimaryColor = Color(0xFF091AA0);
  static const kAccentColor = Color(0xFF3D4CC2);
  static const kWhiteColor = Color(0xFFFFFFFF);
  static const kBlackColor = Color(0xFF000000);
  static const kTextFieldColor = Color(0xFFE7E7EC);

  static ThemeData themeData = ThemeData(
    primaryColor: kPrimaryColor,
    // ignore: deprecated_member_use
    accentColor: kAccentColor,
    scaffoldBackgroundColor: kWhiteColor,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: AppTheme.kPrimaryColor,
    )),
  );
}
