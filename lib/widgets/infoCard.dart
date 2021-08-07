import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InfoCard extends StatefulWidget {

  var name ;
  var rating ;
  var image ;
  var strength ;
  var watchList ;
   InfoCard(this.image,this.name,this.rating,this.strength,this.watchList) ;

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40.0.w,
            child: Container(

              child: Stack(
                children: [
                  Image.network(
                    widget.image,
                    fit: BoxFit.fill,
                    // width: 280.0,
                  ),
                  Container(
                    color: Color.fromRGBO(112, 153, 211, 0.5),
                    padding: EdgeInsets.all(5),
                    child: Icon(widget.watchList?Icons.check_circle_rounded:Icons.add,color: Colors.white,),
                  )
                ],
              )
            ),
          ),
          SizedBox(width: 3.0.w,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 2.5.h,
                    fontStyle: FontStyle.italic
                  ),
                ),
              SizedBox(height: 1.0.h,),
              RatingBar.builder(
                initialRating: widget.rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 3.0.h,
                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
                SizedBox(height: 1.0.h,),
                Text(
                    "Strength :- " + widget.strength,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
