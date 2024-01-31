import 'package:get/get.dart';

import '../modules/Item_Page_Nutrition/bindings/item_page_nutrition_binding.dart';
import '../modules/Item_Page_Nutrition/views/item_page_nutrition_view.dart';
import '../modules/Item_Page_Pricy_History/bindings/item_page_pricy_history_binding.dart';
import '../modules/Item_Page_Pricy_History/views/item_page_pricy_history_view.dart';
import '../modules/item_page_details/bindings/item_page_binding.dart';
import '../modules/item_page_details/views/item_page_view.dart';
import '../modules/item_page_reviews/bindings/item_page_reviews_binding.dart';
import '../modules/item_page_reviews/views/item_page_reviews_view.dart';
import '../modules/search_filter/bindings/search_filter_binding.dart';
import '../modules/search_filter/views/search_filter_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tap_bar_view/bindings/tap_bar_view_binding.dart';
import '../modules/tap_bar_view/views/tap_bar_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_FILTER,
      page: () => const SearchFilterView(),
      binding: SearchFilterBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_PAGE,
      page: () => ItemPageView(),
      binding: ItemPageBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_PAGE_REVIEWS,
      page: () => const ItemPageReviewsView(),
      binding: ItemPageReviewsBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_PAGE_PRICY_HISTORY,
      page: () => ItemPagePricyHistoryView(),
      binding: ItemPagePricyHistoryBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_PAGE_NUTRITION,
      page: () => const ItemPageNutritionView(),
      binding: ItemPageNutritionBinding(),
    ),
    GetPage(
      name: _Paths.TAP_BAR_VIEW,
      page: () => const TapBarViewView(),
      binding: TapBarViewBinding(),
    ),
  ];
}
