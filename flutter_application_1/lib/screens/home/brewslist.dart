import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/brewItem.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/brew.dart';

class BrewList extends StatefulWidget {
  const BrewList({Key? key}) : super(key: key);

  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final brewList = Provider.of<List<Brew>?>(context);

    return ListView.builder(
      itemBuilder: (context, index) {
        return BrewItem(brew: brewList![index]);
      },
      itemCount: brewList!.length,
    );
  }
}
