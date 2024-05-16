


import 'dart:async';

import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';

class SplashService {

  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3) , () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginView, (route) => false));
  }

}