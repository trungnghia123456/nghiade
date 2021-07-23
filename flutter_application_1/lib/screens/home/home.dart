import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/brewslist.dart';
import 'package:flutter_application_1/screens/home/settings_brew.dart';
import 'package:flutter_application_1/screens/service/auth.dart';
import 'package:flutter_application_1/screens/service/firestore.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final AuthService _auth = AuthService();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    String uid = user!.uid;

    void _openBottomSheet(BuildContext context) => {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  child: Settings_Brew(),
                );
              })
        };

    return StreamProvider.value(
        initialData: null,
        value: DataBaseService(uid: uid).brews,
        child: Scaffold(
          backgroundColor: Colors.brown[100],
          appBar: AppBar(
            actions: [
              ElevatedButton(
                onPressed: () async {
                  await _auth.signOut();
                },
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.brown[500])),
              ),
              ElevatedButton(
                onPressed: () => _openBottomSheet(context),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    Text(
                      "setting",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.brown[500])),
              ),
            ],
            title: Text("Brew Crews"),
            backgroundColor: Colors.brown[500],
          ),
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.kindpng.com/picc/m/4-49116_brown-coffee-cappuccino-painted-hand-bean-beans-clipart.png'))),
              child: BrewList()),
        ));
  }
}
