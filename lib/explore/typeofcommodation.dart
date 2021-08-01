import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class TypeofCommodation extends StatefulWidget {
  const TypeofCommodation({Key? key}) : super(key: key);

  @override
  _TypeofCommodationState createState() => _TypeofCommodationState();
}

String temp = '';

class _TypeofCommodationState extends State<TypeofCommodation> {
  List<bool> SwitchValue = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0)),
            child: Column(
              children: [
                Text(
                  'Type of Accomodation',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 50,
                        child: Switch(
                          value: SwitchValue[0],
                          onChanged: (value) {
                            setState(() {
                              SwitchValue[0] = value;
                            });

                            if (value == true) {
                              for (var i = 1; i < SwitchValue.length; i++) {
                                setState(() {
                                  SwitchValue[i] = true;
                                });
                              }
                            }
                            if (value == false) {
                              for (var i = 1; i < SwitchValue.length; i++) {
                                setState(() {
                                  SwitchValue[i] = false;
                                });
                              }
                            }
                          },
                        ),
                      ),
                      Positioned(
                          left: 20,
                          top: 10,
                          child: Text(
                            'All',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Switch(
                    value: SwitchValue[1],
                    onChanged: (value) {
                      setState(() {
                        SwitchValue[1] = value;
                        if (value == false) {
                          setState(() {
                            SwitchValue[0] = false;
                          });
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      'Apartment',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Switch(
                    value: SwitchValue[2],
                    onChanged: (value) {
                      setState(() {
                        SwitchValue[2] = value;
                        if (value == false) {
                          setState(() {
                            SwitchValue[0] = false;
                          });
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Switch(
                    value: SwitchValue[3],
                    onChanged: (value) {
                      setState(() {
                        SwitchValue[3] = value;
                        if (value == false) {
                          setState(() {
                            SwitchValue[0] = false;
                          });
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      'Villa',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Switch(
                    value: SwitchValue[4],
                    onChanged: (value) {
                      setState(() {
                        SwitchValue[4] = value;
                        if (value == false) {
                          setState(() {
                            SwitchValue[0] = false;
                          });
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      'Hotel',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  right: 50,
                  child: Switch(
                    value: SwitchValue[5],
                    onChanged: (value) {
                      setState(() {
                        SwitchValue[5] = value;
                        if (value == false) {
                          setState(() {
                            SwitchValue[0] = false;
                          });
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      'Resort',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
