import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/home/home_binding.dart';
import 'package:kmong_fcm_getx/modules/home/home_page.dart';
import 'package:kmong_fcm_getx/modules/login/login_binding.dart';
import 'package:kmong_fcm_getx/modules/login/login_page.dart';
import 'package:kmong_fcm_getx/modules/splash/splash_binding.dart';
import 'package:kmong_fcm_getx/modules/splash/splash_page.dart';

abstract class Routes {
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const HOME = '/home';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
