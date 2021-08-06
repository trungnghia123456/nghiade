import 'package:day1/diet_plan/shared/circleminus.dart';
import 'package:day1/diet_plan/shared/circleplus.dart';
import 'package:day1/diet_plan/shared/customshape.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_ns/liquid_progress_indicator.dart';

class Footer2 extends StatefulWidget {
  const Footer2({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height / 4) + 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 13, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade600, width: 1))),
                    child: Wrap(direction: Axis.vertical, children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('2100',
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 30)),
                          Text(' ml',
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 16))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'of daily goal 3.5L',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      )
                    ]),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 13, top: 20, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.alarm_on_rounded,
                            color: Colors.grey.shade600,
                            size: 16,
                          ),
                          Text(
                            'Last drink 8:26 AM',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.red.shade600,
                            size: 15,
                          ),
                          Text(
                            'Your bottle is empty,refil\nit!',
                            style: TextStyle(
                              color: Colors.red.shade600,
                              fontSize: 13,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      CirclePlus(color: Colors.indigo),
                      SizedBox(
                        height: 40,
                      ),
                      CircleMinus(color: Colors.indigo)
                    ],
                  ),
                  Container(
                    width: 70,
                    height: (MediaQuery.of(context).size.height / 4),
                    child: LiquidCircularProgressIndicator(
                      value: 0.7, // Defaults to 0.5.
                      valueColor: AlwaysStoppedAnimation(Colors
                          .indigo), // Defaults to the current Theme's accentColor.
                      backgroundColor: Colors
                          .white, // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.indigo,
                      borderWidth: 1,
                      direction: Axis
                          .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text(
                        "70%",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
