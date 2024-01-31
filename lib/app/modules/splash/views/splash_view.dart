import 'package:online_shop/app/modules/search_filter/views/search_filter_view.dart';
import 'package:online_shop/imports/packages_import.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);
  final SplashController crt = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff734CC9),
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
