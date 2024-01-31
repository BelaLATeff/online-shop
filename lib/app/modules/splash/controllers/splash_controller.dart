import 'package:online_shop/app/modules/Item_Page_Nutrition/views/item_page_nutrition_view.dart';
import 'package:online_shop/app/modules/Item_Page_Pricy_History/views/item_page_pricy_history_view.dart';
import 'package:online_shop/app/modules/item_page_details/views/item_page_view.dart';
import 'package:online_shop/app/modules/item_page_reviews/views/item_page_reviews_view.dart';
import 'package:online_shop/app/modules/search_filter/views/search_filter_view.dart';
import 'package:online_shop/app/modules/tap_bar_view/views/tap_bar_view_view.dart';
import 'package:online_shop/imports/packages_import.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1))
        .then((value) => Get.offAll(() => const SearchFilterView()));
  }
}
