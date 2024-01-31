import 'package:online_shop/app/theme/bottom_navigation_theme.dart';
import 'package:online_shop/app/theme/checkbox_theme.dart';
import 'package:online_shop/app/theme/radio.theme.dart';
import 'package:online_shop/app/theme/slider_theme.dart';
import 'package:online_shop/imports/layout_imports.dart';
import 'package:online_shop/imports/packages_import.dart';

class Themes {
  buildThemeData({required bool isArabic}) => ThemeData(
        appBarTheme: appBarTheme,
        primaryColor: Colors.blueGrey[300],
        scaffoldBackgroundColor: Colors.white,
        unselectedWidgetColor: Constants.lightGray,
        toggleableActiveColor: Constants.mainColor,
        disabledColor: Colors.grey.shade400,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Constants.lightGray,
          primary: Constants.mainColor,
        ),
        fontFamily: Constants.mainFONT,
        bottomSheetTheme: bottomSheetTheme,
        bottomNavigationBarTheme: bottomNavigationBarTheme,
        sliderTheme: sliderTheme,
        checkboxTheme: checkboxTheme,
        radioTheme: radioTheme,
      );
}
