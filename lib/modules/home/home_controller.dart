import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:kmong_fcm_getx/services/account_service.dart';

const timeDelay = 0;

class HomeController extends GetxController {
  AccountService accountService;
  HomeController({required this.accountService});

  late String userID;

  getUserID() {
    return accountService.myAccount?.id ?? "아이디 정보 없음";
  }

  getFCMtoken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  @override
  void onInit() {
    super.onInit();
    userID = getUserID();
  }
}
