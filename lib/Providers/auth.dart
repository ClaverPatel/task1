import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String email = "";
  String pwd = "";
  bool vaidate = false;
  void signIn(String emailTxt, String pwdTxt) {
    email = emailTxt;
    pwd = pwdTxt;
    if (email == "bhargav@yopmail.com" && pwd == "Bhargav123") ;
    notifyListeners();
  }
}
