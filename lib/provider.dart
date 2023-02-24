import 'package:flutter/material.dart';
import 'package:gosplash/router.dart';

class Appstate with ChangeNotifier {
  bool? _authstate;

  bool? get authstate => _authstate;

  set authstate(bool? value) {
    _authstate = value;
    notifyListeners();
  }

  Future<void> changeauth(context) async {
    authstate = true;
    Approuter.getRouter().go("/");
  }

  Future<void> changpage() async {
    
  }
}
