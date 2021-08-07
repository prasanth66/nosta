import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/screens/teacher/widgets/profile.dart';


class TecaherProfile extends StatefulWidget {
  const TecaherProfile() ;

  @override
  _TecaherProfileState createState() => _TecaherProfileState();
}

class _TecaherProfileState extends State<TecaherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ),
        title: Text(
          "Ramya Kumari",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.menu
            ),
            onPressed: () {

            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Profile("https://akm-img-a-in.tosshub.com/indiatoday/images/story/201812/teacher_india.jpeg?d4Va5o.0syHd85EQ1vikjbGY1qhij1f5",5.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Ramya Kumari",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "BA B.Ed Degree"
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Iam good with kids , I have 10+ years od experience in teaching, i deal all the competative subjects,"
                        "My major subjects are Biology and chemistry. I have skilled in Physotherapy as well,which also helps in understanding student mentality "
                        ,
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Center(
            child: Container(
              width:80.0.w,
              height: 7.0.h,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    blurRadius: 20.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],

              ),
              child: Center(
                child: Text(
                  "View Portfolio",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 2.0.h

                  ),
                ),
              ),
            ),
          ),
            SizedBox(height: 20,),
            Center(
              child: Column(
                children: [
                  Text(
                      "CONNECT"
                  ),

                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                      "https://i.pinimg.com/originals/ea/ac/0b/eaac0ba5910849c2d121e2faea9dffae.jpg",
                                    )
                                )
                            )),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png",
                                    )
                                )
                            )),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        child:  Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Skype_logo_%282019%E2%80%93present%29.svg/1015px-Skype_logo_%282019%E2%80%93present%29.svg.png",
                                    )
                                )
                            )),
                      )
                    ],
                  )

                ],
              ),
            ),



          ],
        ),
      ),

    );
  }
}
