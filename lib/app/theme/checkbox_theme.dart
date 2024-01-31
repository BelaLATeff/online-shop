import 'package:online_shop/imports/layout_imports.dart';
import 'package:online_shop/imports/packages_import.dart';

final checkboxTheme = CheckboxThemeData(
  // side: BorderSide(
  //   color: Constants.darkGray,
  //   width: 2.w,
  // ),
  shape: const CircleBorder(),
  //check mark color
  checkColor: MaterialStateColor.resolveWith((states) => Colors.white),
  //color that showen when its selected
  fillColor: MaterialStateColor.resolveWith((states) => Constants.mainColor),
);
