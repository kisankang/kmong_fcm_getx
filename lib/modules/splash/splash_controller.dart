import 'package:get/get.dart';
import 'package:kmong_fcm_getx/utils/routes.dart';

const timeDelay = 0;

class SplashController extends GetxController {
  load() async {
    await Future.delayed(Duration(milliseconds: 500));
    goToLoginPage();
  }

  goToLoginPage() {
    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    load();
  }
}
