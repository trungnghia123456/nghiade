import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authenticate/rergister.dart';
import 'package:flutter_application_1/screens/authenticate/signIn.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool changeToggle = true;
  void toggleFunction() {
    setState(() => changeToggle = !changeToggle);
  }

  @override
  Widget build(BuildContext context) {
    return changeToggle == false
        ? Regrister( toggleFunction: toggleFunction )
        : SignIn(
            toggleFunction: toggleFunction,
          );
  }
}
