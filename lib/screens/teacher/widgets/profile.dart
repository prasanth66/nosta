import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Profile extends StatelessWidget {
  final image  ;
  final rating ;
  const Profile(this.image,this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 40.0.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  image
                ),
              ),
            ),

          ),
          Positioned(
            top: 32.0.h,
            child: Container(
              height: 8.0.h,
              color: Color.fromRGBO(112, 153, 211, 0.7),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rating",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold

                    ),
                  ),
                  RatingBar.builder(
                    initialRating: rating,
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 32.0.h,
            right: 0,
            child: Container(
              height: 8.0.h,
              color: Color.fromRGBO(112, 153, 211, 0.3),
              padding: EdgeInsets.all(10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    mini: true,
                    child: Icon(
                      Icons.chat
                    )
                  ),
                  FloatingActionButton(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      mini: true,
                      child: Icon(
                          Icons.phone
                      )
                  ),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
