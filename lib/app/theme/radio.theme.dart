import 'package:online_shop/imports/layout_imports.dart';
import 'package:online_shop/imports/packages_import.dart';
// final radioTheme = RadioThemeData(
//   fillColor: MaterialStateColor.resolveWith((states) => Constants.mainColor),
// );

final radioTheme = RadioThemeData(
  fillColor: MaterialStateProperty.resolveWith((states) => Constants.mainColor),
  // fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //   if (states.contains(MaterialState.disabled)) {
  //     return Constants.gray1;
  //   }
  //   if (states.contains(MaterialState.selected)) {
  //     return Constants.mainColor;
  //   }

  //   return null;
  // }),
);
