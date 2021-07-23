import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/service/auth.dart';
import 'screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider.value(
    initialData: null,
    value: AuthService().user,
    child: MaterialApp(
      home: Wrapper(),
    ),
  ));
}
