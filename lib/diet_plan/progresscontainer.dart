import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Container buildContainer(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    height: (MediaQuery.of(context).size.height / 3) + 50,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
    child: Container(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade400, width: 1))),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.lightBlue, width: 1)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '    Eaten',
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.rice_bowl, color: Colors.blue),
                                Text(
                                  '   1127',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '   Kcal',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.redAccent, width: 1)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '    Burned',
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.fire_extinguisher,
                                    color: Colors.redAccent),
                                Text(
                                  '   102',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('   Kcal',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade400))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  CircularPercentIndicator(
                    radius: 120,
                    lineWidth: 5.0,
                    percent: 0.6,
                    center: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Column(
                        children: [
                          Text(
                            '1503',
                            style:
                                TextStyle(color: Colors.indigo, fontSize: 20),
                          ),
                          Text(
                            'Kcal left',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    progressColor: Colors.indigo,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Carbs',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            width: 80.0,
                            lineHeight: 5.0,
                            percent: 0.8,
                            progressColor: Colors.blue,
                          ),
                          Text(
                            '  12g left',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Protein',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            width: 80.0,
                            lineHeight: 5.0,
                            percent: 0.4,
                            progressColor: Colors.redAccent,
                          ),
                          Text(
                            '  30g left',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Fat',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            width: 80.0,
                            lineHeight: 5.0,
                            percent: 0.3,
                            progressColor: Colors.orangeAccent,
                          ),
                          Text(
                            '  10g left',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
