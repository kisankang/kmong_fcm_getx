import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/splash/splash_controller.dart';

class SplashPage extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
