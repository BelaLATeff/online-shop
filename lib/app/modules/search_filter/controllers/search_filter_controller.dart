import 'package:online_shop/imports/packages_import.dart';

class SearchFilterController extends GetxController {
  List<bool> isSeleted = [false, false, false];
  int? newIndex;

  List<int> sale = [15, 47];
  List<String> catgory = ["Cabbage", "Red Cabbage"];

  List<double> price = [4.99, 6.99];

  @override
  void onInit() {
    super.onInit();
    colorSelect(newIndex);
  }

  void colorSelect(int? newIndex) {
    for (int index = 0; index < isSeleted.length; index++) {
      if (index == newIndex) {
        isSeleted[index] = !isSeleted[index];
      } else {
        isSeleted[index] = false;
      }
    }
    update();
  }
}
