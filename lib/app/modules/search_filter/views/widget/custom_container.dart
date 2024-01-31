import 'package:online_shop/app/modules/tap_bar_view/views/tap_bar_view_view.dart';
import 'package:svg_icon/svg_icon.dart';

import 'package:online_shop/imports/packages_import.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.saleoff,
      required this.categoryTitle,
      required this.price});

  final int saleoff;
  final String categoryTitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const TapBarViewView()),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.grey[100]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        color: Color(0xffE2E2E4)),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 30,
                    width: 70,
                    color: const Color(0xff734CC9),
                    child: Center(
                      child: Text(
                        "$saleoff % OFF",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryTitle,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$2.49 / 500 g",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$$price",
                        style: const TextStyle(
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
    );
  }
}
