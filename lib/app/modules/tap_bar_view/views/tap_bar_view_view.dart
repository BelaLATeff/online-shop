import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/app/modules/Item_Page_Nutrition/views/item_page_nutrition_view.dart';
import 'package:online_shop/app/modules/Item_Page_Pricy_History/views/item_page_pricy_history_view.dart';
import 'package:online_shop/app/modules/item_page_details/views/item_page_view.dart';
import 'package:online_shop/app/modules/item_page_reviews/views/item_page_reviews_view.dart';
import 'package:get/get.dart';

import '../controllers/tap_bar_view_controller.dart';

class TapBarViewView extends GetView<TapBarViewController> {
  const TapBarViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(
              color: Color(0xff6C7C93),
            ),
            backgroundColor: const Color(0xffE5E5E5),
            title: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.camera_alt,
                  color: Color(0xff6C7C93),
                ),
                prefixIcon: const Icon(Icons.search, color: Color(0xff6C7C93)),
                hintText: "Search geoshop",
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                ),
                // labelStyle: const TextStyle(
                //   color: Colors.amber,
                // ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            bottom: const TabBar(
              overlayColor: MaterialStatePropertyAll(Color(0xff734CC9)),
              isScrollable: true,
              unselectedLabelColor: Color(0xff6F7F95),
              labelColor: Color(0xff734CC9),
              indicatorColor: Color(0xff734CC9),
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              tabs: [
                Tab(text: "Details"),
                Tab(text: "Nutrition"),
                Tab(text: "Reviews"),
                Tab(text: "Price History"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ItemPageView(),
              const ItemPageNutritionView(),
              const ItemPageReviewsView(),
              ItemPagePricyHistoryView(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(8), topEnd: Radius.circular(8))),
            height: 140,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Qty",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "450 g",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey[300],
                      width: 1,
                      height: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "\$3.50",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff734CC9))),
                    child: const Text("Add to cart"),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
