import 'package:flutter/material.dart';
import 'package:mychatapp/screens/auntheticate/login.dart';
import 'package:mychatapp/screens/auntheticate/registraion.dart';

class Authenticate extends StatefulWidget {
  @override
  _Authenticate createState() => _Authenticate();
}

class _Authenticate extends State<Authenticate> {
  bool isSignIn = true;
  void toggleView() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSignIn) {
      return login(toggleView: toggleView);
    } else {
      return restration(toggleView: toggleView);
    }
  }
}
