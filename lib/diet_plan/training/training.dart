import 'package:day1/diet_plan/shared/playIcon.dart';
import 'package:flutter/material.dart';

class TrainingContainer extends StatefulWidget {
  const TrainingContainer({Key? key}) : super(key: key);

  @override
  _TrainingContainerState createState() => _TrainingContainerState();
}

class _TrainingContainerState extends State<TrainingContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Row(
              children: [
                Text(
                  'Your Program',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(width: size.width / 2.45),
                Text(
                  'Details',
                  style: TextStyle(color: Colors.indigo.shade700, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 17,
                )
              ],
            ),
            Container(
              width: size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade900,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(900))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next workout\n',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    Text('Legs Toning and\nGlutes Workout at Home\n',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm_off,
                          size: 13,
                          color: Colors.white,
                        ),
                        Text(' 68 min',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                        SizedBox(
                          width: size.width / 2,
                        ),
                        CirclePlay(color: Colors.indigo.shade900)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              Container(
                width: size.width,
                height: 120,
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: size.width,
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                          width: 100,
                        ),
                        Container(
                          width: size.width - 100,
                          height: 100,
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Text(
                                'You\'' 're doing great!',
                                style: TextStyle(
                                    color: Colors.indigo.shade900,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                              Text(
                                '\n keep it up\nand stick to your plant',
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image(
                    image: NetworkImage(
                        'https://cdn2.iconfinder.com/data/icons/healthy-flat-style-1/64/employee-smile-personality-man-executive-manager-512.png'),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Area of focus',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                SizedBox(
                  width: size.width / 2.5,
                ),
                Text(
                  'more',
                  style: TextStyle(color: Colors.indigo, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 17,
                )
              ],
            ),
            Wrap(
              children: [
                Container(
                  width: size.width / 2.5,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image(
                    image: NetworkImage(
                        'https://www.pngkey.com/png/full/388-3886850_the-rock-transparent-png-rock-cut-out.png'),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: size.width / 2.5,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image(
                    image: NetworkImage(
                        'https://media1.giphy.com/media/lRML65wkhHR0qQSPA4/giphy.gif?cid=6c09b952fizjhp2nskscdtilrmc6s9giypm8iupd74a3i7hn&rid=giphy.gif&ct=s'),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Container(
                  width: size.width / 2.5,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image(
                    image: NetworkImage(
                        'https://cdn.shortpixel.ai/client/q_lossless,ret_img,w_416,h_199/https://www.trainingcor.com/wp-content/uploads/2018/05/kb-goblet-squat.png'),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: size.width / 2.5,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image(
                    image: NetworkImage(
                        'https://img.icons8.com/plasticine/2x/exercise-female.png'),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
