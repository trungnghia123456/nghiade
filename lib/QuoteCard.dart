import 'package:flutter/material.dart';
import 'QuoteClass.dart';

class QuoteCard extends StatelessWidget {

  QuoteClass quote = QuoteClass('', '', '');
  QuoteCard(QuoteClass quote){this.quote=quote;}

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          CircleAvatar(backgroundImage: NetworkImage(quote.url),radius: 50.0,),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(quote.author,style: TextStyle(fontSize: 15.0,color: Colors.green,fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text(quote.quote,style: TextStyle(fontSize: 13.0,color: Colors.orange))
            ],
          )
        ],
      ),
    );
  }
}

