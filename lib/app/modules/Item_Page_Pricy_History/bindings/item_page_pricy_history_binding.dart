import 'package:get/get.dart';

import '../controllers/item_page_pricy_history_controller.dart';

class ItemPagePricyHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      () => ItemPagePricyHistoryController(),
    );
  }
}
