import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/services/account_service.dart';
import 'package:kmong_fcm_getx/utils/routes.dart';

const timeDelay = 0;

class LoginController extends GetxController {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  AccountService _accountService = Get.find();

  onPressLogin() {
    bool validation = true; //some validation
    if (validation) {
      _accountService.initializeMyAccount(
          id: idController.text, pw: idController.text);
      Get.toNamed(Routes.HOME);
    } else {
      print("failed to login");
    }
  }
}
