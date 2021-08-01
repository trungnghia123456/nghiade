import 'package:day1/explore/exploredata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:favorite_button/favorite_button.dart';

class ExploreCard extends StatefulWidget {
  const ExploreCard({Key? key, required this.data}) : super(key: key);

  final ExploreData data;

  @override
  _ExploreCardState createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment(0.7, -0.8),
                child: FavoriteButton(
                  valueChanged: () {
                    setState(() {
                      !_isFavorite;
                    });
                  },
                  iconSize: 30.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(widget.data.url),
                        fit: BoxFit.fill)),
                width: double.infinity,
                height: 150),
            Row(
              children: [
                Text(
                  widget.data.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '\$${widget.data.price}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  widget.data.location,
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.location_pin,
                  color: Colors.blue,
                ),
                Text(
                  '' + widget.data.range.toString() + ' km ../ per night',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: widget.data.ratingValue,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 10,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(widget.data.reviewers.toString() + ' Reviews')
              ],
            )
          ],
        ),
      ),
    );
  }
}
