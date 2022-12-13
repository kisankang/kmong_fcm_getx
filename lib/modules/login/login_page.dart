import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/login/login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("아이디"),
              TextFormField(
                controller: controller.idController,
              ),
              SizedBox(height: 10),
              Text("비밀번호"),
              TextFormField(
                controller: controller.pwController,
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: controller.onPressLogin,
                child: Text("로그인"),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
