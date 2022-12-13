import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/services/account_service.dart';
import 'package:kmong_fcm_getx/services/fcm_service.dart';
import 'package:kmong_fcm_getx/utils/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put<AccountService>(AccountService(), permanent: true);

  Get.put<FCMService>(FCMService(), permanent: true);

  // await FirebaseMessaging.instance.getToken();
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   print('Got a message whilst in the foreground!');
  //   print('Message data: ${message.data}');

  //   if (message.notification != null) {
  //     print('Message also contained a notification: ${message.notification}');
  //     Get.snackbar(message.notification?.title ?? "제목 없음",
  //         message.notification?.body ?? "내용 없음");
  //   }
  // });

  var myApp = GetMaterialApp(
    getPages: AppPages.pages,
    initialRoute: Routes.SPLASH,
  );

  runApp(myApp);
}
