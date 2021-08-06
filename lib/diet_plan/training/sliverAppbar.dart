import 'package:day1/diet_plan/home.dart';
import 'package:day1/diet_plan/training/training.dart';
import 'package:flutter/material.dart';

class SliverAppbar extends StatefulWidget {
  const SliverAppbar({Key? key}) : super(key: key);

  @override
  _SliverAppbarState createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 20, right: 20, left: 15),
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_left),
                  color: Colors.black,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    child: Row(children: [
                      Icon(
                        Icons.calendar_view_month,
                        color: Colors.black,
                        size: 20,
                      ),
                      Text(
                        '15 May',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ])),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                )
              ],
              pinned: true,
              expandedHeight: 100.0,
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                title: Text(
                  'Training',
                  style: TextStyle(color: Colors.black),
                ),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return TrainingContainer();
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
