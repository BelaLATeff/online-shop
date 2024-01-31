import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:get/get.dart';

import '../controllers/item_page_reviews_controller.dart';

class ItemPageReviewsView extends GetView<ItemPageReviewsController> {
  const ItemPageReviewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int index = -1;
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  width: double.infinity,
                  height: 260,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Reviews",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Text(
                              "Most Recent",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                                color: Colors.grey[600],
                                iconSize: 12,
                                onPressed: () {
                                  Get.bottomSheet(
                                    isScrollControlled: true,
                                    StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Container(
                                        color: Colors.white,
                                        height: 600,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Create Your Review",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      Get.back();
                                                    },
                                                    icon:
                                                        const Icon(Icons.close),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                height: 1,
                                                width: double.infinity,
                                                color: const Color(0xffEBEBEB),
                                              ),
                                              const SizedBox(height: 20),
                                              const Text(
                                                "Overall Rating",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            index = 4;
                                                          });
                                                        },
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor: index ==
                                                                      4
                                                                  ? const Color(
                                                                      0xffEFB215)
                                                                  : const Color(
                                                                      0xffEBEBEB),
                                                              foregroundColor: index ==
                                                                      4
                                                                  ? const Color(
                                                                      0xffEBEBEB)
                                                                  : const Color(
                                                                      0xffEFB215),
                                                              radius: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 22,
                                                                backgroundColor: index ==
                                                                        4
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                foregroundColor: index ==
                                                                        4
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                child: SvgIcon(
                                                                  "assets/svg/Review.svg",
                                                                  color: index ==
                                                                          4
                                                                      ? Colors
                                                                          .white
                                                                      : const Color(
                                                                          0xffEFB215),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("1")
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            index = 3;
                                                          });
                                                        },
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor: index ==
                                                                      3
                                                                  ? const Color(
                                                                      0xffEFB215)
                                                                  : const Color(
                                                                      0xffEBEBEB),
                                                              foregroundColor: index ==
                                                                      3
                                                                  ? const Color(
                                                                      0xffEBEBEB)
                                                                  : const Color(
                                                                      0xffEFB215),
                                                              radius: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 22,
                                                                backgroundColor: index ==
                                                                        3
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                foregroundColor: index ==
                                                                        3
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                child: SvgIcon(
                                                                  "assets/svg/Review.svg",
                                                                  color: index ==
                                                                          3
                                                                      ? Colors
                                                                          .white
                                                                      : const Color(
                                                                          0xffEFB215),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("2")
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            index = 2;
                                                          });
                                                        },
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor: index ==
                                                                      2
                                                                  ? const Color(
                                                                      0xffEFB215)
                                                                  : const Color(
                                                                      0xffEBEBEB),
                                                              foregroundColor: index ==
                                                                      2
                                                                  ? const Color(
                                                                      0xffEBEBEB)
                                                                  : const Color(
                                                                      0xffEFB215),
                                                              radius: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 22,
                                                                backgroundColor: index ==
                                                                        2
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                foregroundColor: index ==
                                                                        2
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                child: SvgIcon(
                                                                  "assets/svg/Review.svg",
                                                                  color: index ==
                                                                          2
                                                                      ? Colors
                                                                          .white
                                                                      : const Color(
                                                                          0xffEFB215),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("3")
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            index = 1;
                                                          });
                                                        },
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor: index ==
                                                                      1
                                                                  ? const Color(
                                                                      0xffEFB215)
                                                                  : const Color(
                                                                      0xffEBEBEB),
                                                              foregroundColor: index ==
                                                                      1
                                                                  ? const Color(
                                                                      0xffEBEBEB)
                                                                  : const Color(
                                                                      0xffEFB215),
                                                              radius: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 22,
                                                                backgroundColor: index ==
                                                                        1
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                foregroundColor: index ==
                                                                        1
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                child: SvgIcon(
                                                                  "assets/svg/Review.svg",
                                                                  color: index ==
                                                                          1
                                                                      ? Colors
                                                                          .white
                                                                      : const Color(
                                                                          0xffEFB215),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("4")
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            index = 0;
                                                          });
                                                        },
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor: index ==
                                                                      0
                                                                  ? const Color(
                                                                      0xffEFB215)
                                                                  : const Color(
                                                                      0xffEBEBEB),
                                                              foregroundColor: index ==
                                                                      0
                                                                  ? const Color(
                                                                      0xffEBEBEB)
                                                                  : const Color(
                                                                      0xffEFB215),
                                                              radius: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 22,
                                                                backgroundColor: index ==
                                                                        0
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                foregroundColor: index ==
                                                                        0
                                                                    ? const Color(
                                                                        0xffEFB215)
                                                                    : Colors
                                                                        .white,
                                                                child: SvgIcon(
                                                                  "assets/svg/Review.svg",
                                                                  color: index ==
                                                                          0
                                                                      ? Colors
                                                                          .white
                                                                      : const Color(
                                                                          0xffEFB215),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("5")
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff3B3551)),
                                                child: const Text(
                                                    "Submit Review",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                                icon: const SvgIcon(
                                    "assets/svg/arrow-up-and-down.svg")),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                const SizedBox(height: 13),
                                Text(
                                  "/5",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Based on 2,256 Reviews",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SvgIcon(
                              "assets/svg/Review.svg",
                              color: Colors.amber,
                              height: 40,
                              width: 40,
                            ),

                            // size: 50,
                          ],
                        ),
                        const SizedBox(height: 8),
                        Container(
                          color: Colors.grey[300],
                          height: 1,
                          width: double.infinity,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TweenAnimationBuilder<double>(
                                      tween:
                                          Tween<double>(begin: 0.0, end: 0.03),
                                      duration:
                                          const Duration(milliseconds: 3000),
                                      builder: (context, value, _) =>
                                          CircularProgressIndicator(
                                        value: value,
                                        color: const Color(0xff734CC9),
                                        strokeWidth: 3.0,
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    const Text(
                                      "1",
                                      style: TextStyle(
                                        color: Color(
                                          0xff734CC9,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "3%",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TweenAnimationBuilder<double>(
                                      tween:
                                          Tween<double>(begin: 0.0, end: 0.08),
                                      duration:
                                          const Duration(milliseconds: 3000),
                                      builder: (context, value, _) =>
                                          CircularProgressIndicator(
                                        value: value,
                                        color: const Color(0xff734CC9),
                                        strokeWidth: 3.0,
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    const Text(
                                      "2",
                                      style: TextStyle(
                                        color: Color(
                                          0xff734CC9,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "8%",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TweenAnimationBuilder<double>(
                                      tween:
                                          Tween<double>(begin: 0.0, end: 0.13),
                                      duration:
                                          const Duration(milliseconds: 3000),
                                      builder: (context, value, _) =>
                                          CircularProgressIndicator(
                                        value: value,
                                        color: const Color(0xff734CC9),
                                        strokeWidth: 3.0,
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    const Text(
                                      "3",
                                      style: TextStyle(
                                        color: Color(
                                          0xff734CC9,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "13%",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TweenAnimationBuilder<double>(
                                      tween:
                                          Tween<double>(begin: 0.0, end: 0.26),
                                      duration:
                                          const Duration(milliseconds: 3500),
                                      builder: (context, value, _) =>
                                          CircularProgressIndicator(
                                        value: value,
                                        color: const Color(0xff734CC9),
                                        strokeWidth: 3.0,
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    const Text(
                                      "4",
                                      style: TextStyle(
                                        color: Color(
                                          0xff734CC9,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "26%",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TweenAnimationBuilder<double>(
                                      tween:
                                          Tween<double>(begin: 0.0, end: 0.52),
                                      duration:
                                          const Duration(milliseconds: 3000),
                                      builder: (context, value, _) =>
                                          CircularProgressIndicator(
                                        value: value,
                                        color: const Color(0xff734CC9),
                                        strokeWidth: 3.0,
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "5",
                                      style: TextStyle(
                                        color: Color(
                                          0xff734CC9,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "52%",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffE2E2E4),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xffFF811A),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Thomas",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "19 Dec,2021",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Good quality cabbage.",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgIcon(
                                      "assets/svg/Vector.svg",
                                      color: Color(0xff6F7F95),
                                    ),
                                  ),
                                  const Text("210",
                                      style: TextStyle(
                                          color: Color(0xff6F7F95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
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
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffE2E2E4),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xff00BA34),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rosalie",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "5 Aug, 2022",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Superior leaves, nice smell.",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgIcon(
                                      "assets/svg/Vector.svg",
                                      color: Color(0xff6F7F95),
                                    ),
                                  ),
                                  const Text("164",
                                      style: TextStyle(
                                          color: Color(0xff6F7F95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
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
                                  "3.8",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffE2E2E4),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xff00BA34),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Belal",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "18 Dec,1995",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "My Brithday.",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgIcon(
                                      "assets/svg/Vector.svg",
                                      color: Color(0xff6F7F95),
                                    ),
                                  ),
                                  const Text("28",
                                      style: TextStyle(
                                          color: Color(0xff6F7F95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
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
                                  "4.2",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffE2E2E4),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xffFF811A),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Belal",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "18 Dec,1995",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "My Brithday",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgIcon(
                                      "assets/svg/Vector.svg",
                                      color: Color(0xff6F7F95),
                                    ),
                                  ),
                                  const Text("28",
                                      style: TextStyle(
                                          color: Color(0xff6F7F95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
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
                                  "2.4",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffE2E2E4),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xffFF811A),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Belal",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "18 Dec,1995",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "My Brithday",
                                style: TextStyle(
                                    color: Color(0xff6F7F95),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgIcon(
                                      "assets/svg/Vector.svg",
                                      color: Color(0xff6F7F95),
                                    ),
                                  ),
                                  const Text("28",
                                      style: TextStyle(
                                          color: Color(0xff6F7F95),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
