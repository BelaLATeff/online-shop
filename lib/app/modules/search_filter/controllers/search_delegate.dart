import 'package:lottie/lottie.dart';
import 'package:online_shop/imports/packages_import.dart';
import 'package:svg_icon/svg_icon.dart';

class MySearchDelegate extends SearchDelegate<dynamic> {
  List<String> searchResult = [
    'Fresh Cabbage',
    'Organic Cabbage',
    'Green Veggies',
    'Cucmber',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final listItem = searchResult
        .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return listItem.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Item is not Found بردو ! ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Lottie.asset(
                  "assets/lottie/animation.json",
                  width: 75,
                  height: 75,
                )
              ],
            ),
          )
        : ListView.builder(
            itemCount: listItem.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                listItem[index],
              ),
            ),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listItem = searchResult
        .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return listItem.isEmpty
        ? const Center(
            child: Text(
              "Item is not Found !",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            // SvgIcon("assetName")
          )
        : ListView.builder(
            itemCount: listItem.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                listItem[index],
              ),
            ),
          );
  }
}
