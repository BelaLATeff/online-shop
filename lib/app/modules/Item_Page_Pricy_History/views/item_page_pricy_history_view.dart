import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';
import '../controllers/item_page_pricy_history_controller.dart';

class ItemPagePricyHistoryView extends GetView<ItemPagePricyHistoryController> {
  ItemPagePricyHistoryView({Key? key}) : super(key: key);

  final ItemPagePricyHistoryController crt =
      Get.put(ItemPagePricyHistoryController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey[350],
                  width: double.infinity,
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    height: 200,
                    width: double.infinity,
                    child: SfCartesianChart(
                      // isTransposed: true,
                      // trackballBehavior: crt.trackballBehavior(),
                      // enableMultiSelection: true,
                      // selectionGesture: ActivationMode.singleTap,
                      // selectionType: SelectionType.point,
                      plotAreaBorderColor: Colors.white,
                      title: ChartTitle(
                        text: "Price History",
                        alignment: ChartAlignment.near,
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      // legend: const Legend(isVisible: true),
                      tooltipBehavior: crt.tooltipBehavior(),
                      series: [
                        SplineSeries<SalesData, String>(
                          name: "Sales",
                          dataSource: crt.getChartDate(),
                          xValueMapper: (SalesData sales, index) => sales.month,
                          yValueMapper: (SalesData sales, _) => sales.price,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true),
                          enableTooltip: true,
                          dataLabelMapper: (SalesData sales, index) =>
                              sales.price.toString(),
                          color: const Color(0xff90D272),
                          splineType: SplineType.clamped,
                          cardinalSplineTension: 0.9,
                          animationDuration: 9000,
                        ),
                      ],
                      primaryXAxis: CategoryAxis(
                        // crossesAt: 5,
                        edgeLabelPlacement: EdgeLabelPlacement.shift,
                        labelPlacement: LabelPlacement.onTicks,
                        axisLine: const AxisLine(color: Colors.white),
                        majorGridLines: const MajorGridLines(width: 0),
                      ),
                      primaryYAxis: CategoryAxis(
                        // labelPlacement: LabelPlacement.onTicks,
                        majorGridLines: const MajorGridLines(width: 0),
                        axisLine: const AxisLine(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]),
                        height: 245,
                        width: 160,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                      color: Color(0xffE2E2E4)),
                                  width: 165,
                                  height: 129,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 30,
                                    width: 70,
                                    color: const Color(0xff734CC9),
                                    child: const Center(
                                      child: Text(
                                        "15% OFF",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Red Cabbage",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "\$3.49 / 250 g",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$6.99",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const SvgIcon(
                                          "assets/svg/Cart.svg",
                                          color: Color(0xff734CC9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]),
                        height: 245,
                        width: 160,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                      color: Color(0xffE2E2E4)),
                                  width: 165,
                                  height: 129,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 30,
                                    width: 70,
                                    color: const Color(0xffEB6A6A),
                                    child: const Center(
                                      child: Text(
                                        "ON SALE",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Brussels sprout",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "\$1.20 / 200g",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$2.40",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const SvgIcon(
                                          "assets/svg/Cart.svg",
                                          color: Color(0xff734CC9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
