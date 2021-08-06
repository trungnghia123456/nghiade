import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height / 4) + 20,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding:
                    EdgeInsets.only(left: 13, right: 13, top: 20, bottom: 20),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade600, width: 1))),
                child: Wrap(children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('206.8 ',
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 30)),
                          Text('Ibs',
                              style:
                                  TextStyle(color: Colors.indigo, fontSize: 20))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.end,
                    direction: Axis.vertical,
                    children: [
                      SizedBox(
                        height: 33,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_alarms,
                              size: 15, color: Colors.grey.shade700),
                          Text('Today 8:26 AM',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade700)),
                        ],
                      ),
                      Text('InBody SmartScale',
                          style: TextStyle(fontSize: 15, color: Colors.indigo)),
                    ],
                  ),
                ]),
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 26,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            '185 cm',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Height',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            '127.3 BMI',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'OverWeight',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            '20%',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Body fat',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
