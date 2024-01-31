import 'package:get/get.dart';

import '../controllers/item_page_controller.dart';

class ItemPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemPageController>(
      () => ItemPageController(),
    );
  }
}
