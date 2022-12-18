import 'package:kmong_fcm_getx/models/user_model.dart';

class AccountService {
  UserModel? _myAccount;
  UserModel? get myAccount => _myAccount;

  initializeMyAccount({required String id, required String pw}) {
    _myAccount = UserModel(id: id, pw: pw);
  }
}
