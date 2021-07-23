import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/screens/service/firestore.dart';
import 'package:flutter_application_1/screens/shared/loading.dart';
import 'package:provider/provider.dart';

class Settings_Brew extends StatefulWidget {
  const Settings_Brew({Key? key}) : super(key: key);

  @override
  _Settings_BrewState createState() => _Settings_BrewState();
}

class _Settings_BrewState extends State<Settings_Brew> {
  final _formkey = GlobalKey<FormState>();
  List<String> suggarsList = ['0', '1', '2', '3', '4'];
  String? _currentName;
  int? _currentStrenght;
  String? _currentsuggars;
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);

    return StreamBuilder<UserData>(
        stream: DataBaseService(uid: user!.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Form(
              key: _formkey,
              child: Column(
                children: [
                  Text('Setting your Brew'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: TextFormField(
                      initialValue: _currentName ?? snapshot.data!.sugars,
                      onChanged: (value) => _currentName = value,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField(
                    items: suggarsList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text('take ' + e + ' suggars'),
                            ))
                        .toList(),
                    value: _currentsuggars ?? snapshot.data!.sugars,
                    onChanged: (val) =>
                        setState(() => _currentsuggars = val.toString()),
                  ),
                  Slider(
                    activeColor: Colors.brown[snapshot.data!.strenght],
                    min: 100,
                    max: 900,
                    divisions: 8,
                    onChanged: (value) => setState(() {
                      _currentStrenght = value.round();
                    }),
                    value: (_currentStrenght ?? snapshot.data!.strenght)
                        .toDouble(),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        await DataBaseService(uid: user.uid).setNewData(
                            _currentName ?? snapshot.data!.name,
                            _currentStrenght ?? snapshot.data!.strenght,
                            _currentsuggars ?? snapshot.data!.sugars);
                        print(_currentName);
                      }
                      Navigator.pop(context);
                    },
                    child: Text('Update'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[200])),
                  )
                ],
              ),
            );
          } else {
            return Loading();
          }
        });
  }
}
