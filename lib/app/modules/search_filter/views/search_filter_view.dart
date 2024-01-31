import 'package:online_shop/app/modules/search_filter/controllers/search_delegate.dart';
import 'package:online_shop/app/modules/search_filter/views/widget/custom_container.dart';
import 'package:online_shop/app/modules/tap_bar_view/views/tap_bar_view_view.dart';
import 'package:online_shop/imports/packages_import.dart';
import 'package:svg_icon/svg_icon.dart';

import '../controllers/search_filter_controller.dart';

class SearchFilterView extends GetView<SearchFilterController> {
  const SearchFilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchFilterController crt = Get.put(SearchFilterController());
    crt.newIndex;

    int index = -1;
    int secindex = -1;
    int tindex = -1;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                // Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey[500],
              ),
            ),
            Expanded(
              child: TextField(
                onTap: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: const Icon(Icons.camera_alt),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search geoshop",
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.amber,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Search Results",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.bottomSheet(
                        isScrollControlled: true,
                        StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Container(
                            color: Colors.white,
                            height: 600,
                            child: SingleChildScrollView(
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Search Filter",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          icon: const Icon(Icons.close)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Type",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.arrow_drop_up,
                                            ),
                                            style: const ButtonStyle(),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: index == 0
                                                    ? const Color(0xff734CC9)
                                                    : const Color(0xffE5E5E5),
                                                foregroundColor: index == 0
                                                    ? Colors.white
                                                    : Colors.black45,
                                              ),
                                              onPressed: () {
                                                setState(
                                                  () {
                                                    index = 0;
                                                  },
                                                );
                                              },
                                              child: const Text(
                                                "organic",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: index == 1
                                                    ? const Color(0xff734CC9)
                                                    : const Color(0xffE5E5E5),
                                                foregroundColor: index == 1
                                                    ? Colors.white
                                                    : Colors.black45,
                                              ),
                                              onPressed: () {
                                                setState(
                                                  () {
                                                    index = 1;
                                                  },
                                                );
                                              },
                                              child: const Text(
                                                "Fresh",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: index == 2
                                                    ? const Color(0xff734CC9)
                                                    : const Color(0xffE5E5E5),
                                                foregroundColor: index == 2
                                                    ? Colors.white
                                                    : Colors.black45,
                                              ),
                                              onPressed: () {
                                                setState(
                                                  () {
                                                    index = 2;
                                                  },
                                                );
                                              },
                                              child: const Text(
                                                "Canned",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.arrow_drop_up)),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        secindex == 0
                                                            ? const Color(
                                                                0xff734CC9)
                                                            : const Color(
                                                                0xffE5E5E5),
                                                    foregroundColor:
                                                        secindex == 0
                                                            ? Colors.white
                                                            : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        secindex = 0;
                                                      },
                                                    );
                                                  },
                                                  child: const Text(
                                                    "\$5-\$10",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        secindex == 1
                                                            ? const Color(
                                                                0xff734CC9)
                                                            : const Color(
                                                                0xffE5E5E5),
                                                    foregroundColor:
                                                        secindex == 1
                                                            ? Colors.white
                                                            : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        secindex = 1;
                                                      },
                                                    );
                                                  },
                                                  child: const Text(
                                                    "\$11-\$20",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        secindex == 2
                                                            ? const Color(
                                                                0xff734CC9)
                                                            : const Color(
                                                                0xffE5E5E5),
                                                    foregroundColor:
                                                        secindex == 2
                                                            ? Colors.white
                                                            : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        secindex = 2;
                                                      },
                                                    );
                                                  },
                                                  child: const Text(
                                                    "\$21-\$30",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Categories",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.arrow_drop_up)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Customer Ratings",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.arrow_drop_up)),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: tindex == 0
                                                        ? const Color(
                                                            0xff734CC9)
                                                        : const Color(
                                                            0xffE5E5E5),
                                                    foregroundColor: tindex == 0
                                                        ? Colors.white
                                                        : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        tindex = 0;
                                                      },
                                                    );
                                                  },
                                                  child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SvgIcon(
                                                        "assets/svg/Review.svg",
                                                        color: Colors.amber,
                                                        height: 20,
                                                        width: 20,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "4",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: tindex == 1
                                                        ? const Color(
                                                            0xff734CC9)
                                                        : const Color(
                                                            0xffE5E5E5),
                                                    foregroundColor: tindex == 1
                                                        ? Colors.white
                                                        : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        tindex = 1;
                                                      },
                                                    );
                                                  },
                                                  child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SvgIcon(
                                                        "assets/svg/Review.svg",
                                                        color: Colors.amber,
                                                        height: 20,
                                                        width: 20,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: tindex == 2
                                                        ? const Color(
                                                            0xff734CC9)
                                                        : const Color(
                                                            0xffE5E5E5),
                                                    foregroundColor: tindex == 2
                                                        ? Colors.white
                                                        : Colors.black45,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        tindex = 2;
                                                      },
                                                    );
                                                  },
                                                  child: const Row(
                                                    children: [
                                                      SvgIcon(
                                                        "assets/svg/Review.svg",
                                                        color: Colors.amber,
                                                        height: 20,
                                                        width: 20,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "2",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Brands",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.arrow_drop_up)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Type",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.arrow_drop_up)),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              const Text(
                                                "Clear Filters",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black45),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff734CC9)),
                                                onPressed: () {},
                                                child: const Text(
                                                  "Show 19 Results",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          );
                        }),
                      );
                    },
                    icon: SvgIcon(
                      "assets/svg/Filter_2.svg",
                      color: Colors.grey[500],
                    ),
                    iconSize: 20,
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.8 / 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) => CustomContainer(
                      saleoff: crt.sale[index],
                      categoryTitle: crt.catgory[index],
                      price: crt.price[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
