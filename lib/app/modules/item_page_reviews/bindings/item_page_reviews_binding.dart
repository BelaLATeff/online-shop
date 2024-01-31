import 'package:get/get.dart';

import '../controllers/item_page_reviews_controller.dart';

class ItemPageReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemPageReviewsController>(
      () => ItemPageReviewsController(),
    );
  }
}
