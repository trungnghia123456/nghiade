import 'package:day1/explore/home.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:day1/explore/typeofcommodation.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

RangeValues rangeValues = RangeValues(100, 600);

class _FilterState extends State<Filter> {
  bool box1 = false;
  bool box2 = false;
  bool box3 = false;
  bool box4 = false;
  bool box5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment(-1.0, 1.0),
        child: Column(
          children: [
            Text(
              'Price (for 1 night)',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            RangeSlider(
                values: rangeValues,
                onChanged: (RangeValues values) {
                  setState(() {
                    rangeValues = values;
                  });
                },
                activeColor: Colors.cyan,
                min: 0,
                max: 1000,
                divisions: 100,
                labels:
                    RangeLabels('${rangeValues.start}', '${rangeValues.end}')),
            Container(
              alignment: Alignment(-0.9, 1.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Column(
                children: [
                  Text(
                    'Popular filters',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Row(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text('Free Breakfast'),
                              value: box1,
                              onChanged: (bool? value) {
                                setState(() {
                                  box1 = value!;
                                });
                              })),
                      Flexible(
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text('Free Parking'),
                              value: box2,
                              onChanged: (bool? value) {
                                setState(() {
                                  box2 = value!;
                                });
                              }))
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text('Pool'),
                              value: box3,
                              onChanged: (bool? value) {
                                setState(() {
                                  box3 = value!;
                                });
                              })),
                      Flexible(
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text('Pet Friendly'),
                              value: box4,
                              onChanged: (bool? value) {
                                setState(() {
                                  box4 = value!;
                                });
                              }))
                    ],
                  ),
                  CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Free wifi'),
                      value: box5,
                      onChanged: (bool? value) {
                        setState(() {
                          box5 = value!;
                        });
                      })
                ],
              ),
            ),
            TypeofCommodation()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            child: Text('Apply'),
          )),
    );
  }
}
