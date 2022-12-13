import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.create(() => LoginController());
  }
}
