import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/modules/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(controller.getUserID() + " 님 환영합니다."),
            SizedBox(height: 40),
            OutlinedButton(
                onPressed: () async {
                  String? token = await controller.getFCMtoken();
                  print("my FCM token: $token");
                },
                child: Text("토큰 받기")),
            ElevatedButton(onPressed: () {}, child: Text("FCM 알림 받기"))
          ],
        ),
      ),
    );
  }
}
