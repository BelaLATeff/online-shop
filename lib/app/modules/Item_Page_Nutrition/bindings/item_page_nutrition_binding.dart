import 'package:get/get.dart';

import '../controllers/item_page_nutrition_controller.dart';

class ItemPageNutritionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemPageNutritionController>(
      () => ItemPageNutritionController(),
    );
  }
}
