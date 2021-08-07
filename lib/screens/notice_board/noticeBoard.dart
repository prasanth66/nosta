import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import 'package:nosta/widgets/notificationCard.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard();

  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: Column(
            children: [
              Text(
                "Notice Board",
                style: TextStyle(
                    color: Colors.white
                ),
              ),

            ],
          ),

          backgroundColor: Colors.white24,
          centerTitle: true,


      ),
      body: Column(
        children: [
          SizedBox(height: 2.0.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: (){},
                backgroundColor: Colors.white24,
                child:  Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 4.0.h,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.white24,
                onPressed: (){},
                child:  Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                  size: 4.0.h,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.white24,
                onPressed: (){},
                child:  Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                  size: 4.0.h,
                ),
              )
            ],
          ),
          SizedBox(height: 2.0.h,),
          NotificationCard(
            "https://www.northeasttoday.in/assets/resources/2020/09/Odisha-Rain.jpg",
            "Holiday Due To Heavy Rains",
              "20/07/2021"
          ),
          SizedBox(height: 1.0.h,),
          NotificationCard(
            "https://img.freepik.com/free-vector/parents-concept-illustration_114360-4137.jpg?size=338&ext=jpg",
            "Parents Meeting is on 24/12/2021",
              "15/07/2021"
          ),
          SizedBox(height: 1.0.h,),
          NotificationCard(
              "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/07/20/986191-976859-965461-students.jpg",
              "HalfYearly Exams Postponed due to COVID",
              "14/07/2021"
          ),
        ],
      ),
    );
  }
}
