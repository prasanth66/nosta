import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/widgets/infoCard.dart';


class Colleges extends StatefulWidget {
  const Colleges();

  @override
  _CollegesState createState() => _CollegesState();
}

class _CollegesState extends State<Colleges> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme:IconThemeData(
              color: Colors.black
          ),
          title: Text(
            "Colleges",
            style: TextStyle(
                color: Colors.black
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(child: Text(
                "Colleges List",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 2.3.h,
                ),
              )),
              Tab(child: Text(
                "ShortListed",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 2.3.h,
                ),
              )),

            ],
          ),
        ),
        body:TabBarView(
          children: [
            Column(
              children: [
                SizedBox(height: 2.0.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 85.0.w,
                      height: 7.0.h,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 0.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 10  horizontally
                                0.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],

                        ),
                        child: TextFormField(
                          style: TextStyle( fontWeight: FontWeight.w300),

                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 4.0.h,
                              // color: Colors.white,
                            ),

                            border: InputBorder.none,
                            contentPadding:EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: "Search By Location...",
                            hintStyle: TextStyle(fontSize: 2.3.h, ),
                          ),
                        ),
                      ),

                    ),
                    Icon(
                        Icons.filter_alt
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                InfoCard(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ujexWO0rbeuG8MiwvPdBIvXxLjlLZRJGY4fKqUW0nTx2MQIM-X9zym_tmNaJS_UzcBE&usqp=CAU",
                    "SRM University",
                    1.0,
                    "5000",
                    true
                ),

                InfoCard(
                    "https://www.ndtv.com/education/cache-static/media/presets/625X400/article_images/2020/5/12/iit-kharagpur_650x400_81484540765.webp",
                    "IIT Kharagpur",
                    5.0,
                    "750",
                    false

                ),

              ],
            ),

            Column(
              children: [
                SizedBox(height: 2.0.h,),
                InfoCard(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ujexWO0rbeuG8MiwvPdBIvXxLjlLZRJGY4fKqUW0nTx2MQIM-X9zym_tmNaJS_UzcBE&usqp=CAU",
                    "SRM University",
                    1.0,
                    "5000",
                    true
                ),


              ],
            ),
          ],
        )
      ),
    );
  }
}
