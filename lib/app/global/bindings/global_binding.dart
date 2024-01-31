import 'package:get/get.dart';

class DependencyBinding extends Bindings {
  DependencyBinding() {
    dependencies();
  }

  @override
  void dependencies() async {
    // Get.put(SettingRepositoryImpl(InternetConnectionChecker()));
    // Get.put(SettingsController());
    // Get.put(NotificationRepositoryImpl(FirebaseMessaging.instance));
    // Get.put(BiometricAuthRepo(LocalAuthentication()));
    // Get.lazyPut(() => FireBaseRepoImpl(FirebaseAuth.instance), fenix: true);
    // Get.put(NotificationController());

    // Get.lazyPut(() => AuthRepositoryImpl(), fenix: true);
    // Get.lazyPut(() => UserRepositoryImpl(), fenix: true);
    // Get.lazyPut(() => MapsRepoImpl(), fenix: true);

    // Get.put(AuthController());
    // Get.put(GlobalRepoImpl());

    // // Get.put(BaseRequest());
    // Get.put(GlobalController());
  }
}
