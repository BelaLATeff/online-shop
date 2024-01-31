import 'package:online_shop/app/theme/bottom_navigation_theme.dart';
import 'package:online_shop/app/theme/bottom_sheet_theme.dart';
import 'package:online_shop/imports/packages_import.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:svg_icon/svg_icon.dart';

import '../controllers/item_page_controller.dart';

class ItemPageView extends GetView<ItemPageController> {
  ItemPageView({Key? key}) : super(key: key);
  final crt = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: PageView(
                      controller: crt,
                      children: [
                        Container(
                          color: Colors.blueGrey[200],
                          width: double.infinity,
                          height: 250,
                        ),
                        Container(
                          color: Colors.redAccent,
                          width: double.infinity,
                          height: 250,
                        ),
                        Container(
                          color: Colors.orangeAccent,
                          width: double.infinity,
                          height: 250,
                        ),
                        Container(
                          color: Colors.purpleAccent,
                          width: double.infinity,
                          height: 250,
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: double.infinity,
                          height: 250,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SmoothPageIndicator(
                          controller: crt,
                          count: 5,
                          effect: const WormEffect(
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor: Colors.white,
                            dotColor: Color(0xffE2E2E4),
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: const Color(0xff734CC9),
                      height: 30,
                      width: 70,
                      child: const Center(
                        child: Text("15% OFF",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      color: Colors.white,
                      height: 30,
                      width: 70,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SvgIcon(
                              "assets/svg/Review.svg",
                              color: Colors.amber,
                              height: 20,
                              width: 20,
                            ),
                            Container(
                              color: Colors.grey[200],
                              height: 15,
                              width: 1,
                            ),
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        "2,256",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Fresh Cabbage",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Cabbage is generally grown for its densely leaved heads, produced during the first year of its biennial cycle... ",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
