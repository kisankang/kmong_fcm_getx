import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.create(() => SplashController());
  }
}
