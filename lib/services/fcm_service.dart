import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class FCMService extends GetxService {
  @override
  void onInit() {
    super.onInit();
    FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
        Get.snackbar(message.notification?.title ?? "제목 없음",
            message.notification?.body ?? "내용 없음");
      }
    });
  }
}
