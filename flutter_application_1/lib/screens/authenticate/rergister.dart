import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/shared/decoration.dart';
import 'package:flutter_application_1/screens/service/auth.dart';
import 'package:flutter_application_1/screens/shared/loading.dart';

class Regrister extends StatefulWidget {
  //constructor
  final Function toggleFunction;
  Regrister({required this.toggleFunction});

  @override
  _RegristerState createState() => _RegristerState();
}

//parametter set
AuthService _auth = AuthService();
bool loading = false;
String error = '';
String email = "";
String passWord = "";
RegExp emailReg =
    new RegExp(r'[a-zA-Z0-9]{4,32}@[a-z0-9]{2,10}(\.[a-z0-9]{2,8}){1,2}');
RegExp passwordReg = new RegExp(r'[a-z0-9A-Z]{6,}');
final _validateState = GlobalKey<FormState>();

//main job
class _RegristerState extends State<Regrister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        centerTitle: true,
        title: Text('Regrister Page'),
        actions: [
          ElevatedButton(
            onPressed: () {
              widget.toggleFunction();
            },
            child: Row(
              children: [Icon(Icons.door_front), Text("Sign In")],
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Form(
          key: _validateState,
          child: Column(
            children: [
              TextFormField(
                  decoration: decorationInput.copyWith(hintText: "input email"),
                  validator: (value) => emailReg.hasMatch(value!) == false
                      ? "enter a valid email ,pls"
                      : null,
                  onChanged: (value) => {
                        setState(() {
                          email = value;
                        })
                      }),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration:
                    decorationInput.copyWith(hintText: "input password"),
                validator: (value) => passwordReg.hasMatch(value!) == false
                    ? "enter a password leght >6 ,pls"
                    : null,
                onChanged: (value) => {
                  setState(() {
                    passWord = value;
                  })
                },
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_validateState.currentState!.validate()) {
                    setState(() => loading = true);
                    dynamic result =
                        await _auth.regristerWithEmailAndPass(email, passWord);
                    if (result == null) {
                      setState(() {
                        error = "invalid email,Failed to create an account ";
                        loading = false;
                      });
                    }
                  }
                },
                child: Text('Regrister'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
