import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/item_page_nutrition_controller.dart';

class ItemPageNutritionView extends GetView<ItemPageNutritionController> {
  const ItemPageNutritionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Macro Nutrients",
                  style: TextStyle(
                      color: Color(0xff3B3551),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carbohydrates",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        const SizedBox(height: 10),
                        Text(
                          "Total Fat",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Protein",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Vitamins and Minerals",
                          style: TextStyle(
                              color: Color(0xff3B3551),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Vitamin C",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Potassium",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Vitamin B6",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Pantothenic Acid",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Folate",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Vitamin K",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 5),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.52),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 17),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.10),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 17),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.18),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 60),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.60),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.20),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.35),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 17),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.20),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.38),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 10,
                                width: 60,
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween<double>(begin: 0.0, end: 0.85),
                                  duration: const Duration(milliseconds: 3500),
                                  builder: (context, value, _) =>
                                      LinearProgressIndicator(
                                    value: value,
                                    color: const Color(0xff734CC9),
                                    minHeight: 10,
                                    backgroundColor: Colors.grey[400],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "5.2g",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "0.09g",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "1.1g",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          "33mg",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "151mg",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "0.1mg",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "0.2mg",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "38ug",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "68ug",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "*only significant nutrients or significant differences are highlighted above.",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
