import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationCard extends StatefulWidget {
  final imageUrl ;
  final notice ;
  final date ;
  const NotificationCard(this.imageUrl,this.notice,this.date) ;

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(5.0.w, 0, 5.0.w, 0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white24,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.date,
                style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              widget.imageUrl
                          )
                      )
                  )),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    widget.notice,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 2.2.h,

                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.grey,
              )
            ],
          ),
        ],
      )
    );
  }
}
