import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  const DetailData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://previews.123rf.com/images/sabuhinovruzov/sabuhinovruzov1902/sabuhinovruzov190202020/118667762-mobile-application-developer-working-vector-icon-profession-of-app-developer-concept-illustration-ma.jpg'),
                  fit: BoxFit.fill)),
        ),
        Positioned(
            top: 5,
            left: 5,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent)),
              onPressed: () {
                return Navigator.pop(context);
              },
              child: Text(
                '<',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 2.8,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Web Design \nCourse',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${28.99}',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        '4.3',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Icon(Icons.star, size: 18, color: Colors.blue)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 0))
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              '24',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            Text(
                              'Classes',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 0))
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              '2hours',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            Text(
                              'Time',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 0))
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              '24',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            Text(
                              'Seat',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Learn   modern   web   design    with\ngamification   aspects.   From   your\nfundamentals all the way up to...',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            )),
        Positioned(
            bottom: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 62,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      side: MaterialStateProperty.all(
                          BorderSide(width: 1, color: Colors.grey)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shadowColor:
                              MaterialStateProperty.all(Colors.blue.shade400),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: Text(
                        'Join Course',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ],
            )),
        Positioned(
            top: (MediaQuery.of(context).size.height / 2.8) - 30,
            right: 40,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(40)),
              child: Icon(Icons.favorite, size: 30, color: Colors.white),
            ))
      ]),
    );
  }
}
