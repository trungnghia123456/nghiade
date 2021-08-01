import 'package:day1/explore/exploreUI.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _isFavorite = false;
String action = 'home';

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 25),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            FavoriteButton(
              iconColor: Colors.green,
              valueChanged: () => setState(() {
                !_isFavorite;
              }),
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.map_sharp,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: ExploreUI(),
       
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        );
  }
}
