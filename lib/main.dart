import 'package:online_shop/app/theme/theme.dart';
import 'package:online_shop/app/translation/translation.dart';
import 'package:online_shop/imports/layout_imports.dart';

import 'imports/packages_import.dart';
//hello from sherif branch

void main() async {
  runApp(
    //CartItemsList()
    GetMaterialApp(
      title: "Online Shop",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translations: Translation(),
      debugShowCheckedModeBanner: false,
      // locale: Locale(controller.currentLanguage.langLocale),
      theme: Themes().buildThemeData(isArabic: false),
    ),
  );
}
