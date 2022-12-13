import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.create(() => HomeController(accountService: Get.find()));
  }
}
