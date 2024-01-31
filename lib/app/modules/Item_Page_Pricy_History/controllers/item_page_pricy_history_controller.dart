import 'package:get/get.dart';
import 'package:online_shop/imports/packages_import.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ItemPagePricyHistoryController extends GetxController {
  late TrackballBehavior _trackballbehavior;
  @override
  void onInit() {
    super.onInit();
    getChartDate();
    tooltipBehavior();
    // trackballBehavior();
    update();
  }

  TrackballBehavior trackballBehavior() {
    _trackballbehavior = TrackballBehavior(
      enable: true,
      markerSettings: const TrackballMarkerSettings(
          markerVisibility: TrackballVisibilityMode.visible),
      // activationMode: ActivationMode.singleTap,
      builder: (BuildContext context, TrackballDetails trackballDetails) {
        return const CircleAvatar(
          radius: 15,
          backgroundColor: Colors.amber,
        );
      },
      shouldAlwaysShow: true,
      tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
    );
    return _trackballbehavior;
  }

  TooltipBehavior tooltipBehavior() {
    final _tooltipBehavior = TooltipBehavior(enable: true);

    return _tooltipBehavior;
  }

  List<SalesData> getChartDate() {
    final List<SalesData> chartsData = [
      SalesData("Jan 22", 3),
      SalesData("Feb 22", 7),
      SalesData("Mar 22", 4),
      SalesData("Apr 22", 7),
    ];
    return chartsData;
  }
}

class SalesData {
  SalesData(this.month, this.price);
  final String month;
  final int price;
}
