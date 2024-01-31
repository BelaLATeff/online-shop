import 'package:get/get.dart';

import '../controllers/tap_bar_view_controller.dart';

class TapBarViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapBarViewController>(
      () => TapBarViewController(),
    );
  }
}
