import 'package:flutter/services.dart';
import 'package:online_shop/app/utils/constants.dart';
import 'package:online_shop/imports/packages_import.dart';

final appBarTheme = AppBarTheme(
  centerTitle: true,
  backgroundColor: Colors.transparent,
  elevation: 0,
  iconTheme: IconThemeData(
    color: Constants.ligtIconColor,
    size: 20,
  ),
  titleTextStyle: TextStyle(
    fontSize: 32,
    color: Constants.textColor,
    fontWeight: FontWeight.bold,
  ),
);
