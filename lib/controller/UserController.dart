import 'package:actividad5/model/UserModel.dart';

class UserController {
  UserModel userModel = UserModel();

  bool isLoginFormValid() {
    return userModel.email.isNotEmpty && userModel.password.isNotEmpty;
  } 

  bool isEmailValid() {
    return userModel.email.contains('@');
  } 

  bool isPhoneNumberValid() {
    return userModel.password.length >= 8;
  }

  void clearForm() {
    userModel = UserModel();
  }
}