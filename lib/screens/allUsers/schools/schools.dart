import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/widgets/infoCard.dart';


class Schools extends StatefulWidget {
  const Schools() ;

  @override
  _SchoolsState createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {
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
              "SCHOOLS",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(child: Text(
                  "Schools List",
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
        body: TabBarView(
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
                  "https://thekhaitanschool.org/wp-content/uploads/2019/09/Banner-final.jpg",
                  "Sarada Vidya Mandir",
                  3.0,
                  "500",
                  false
                ),

                InfoCard(
                  "https://image.shutterstock.com/image-illustration/3d-illustration-modern-school-300-260nw-1049762471.jpg",
                  "Pavan Concept School",
                  4.2,
                  "750",
                  true,
                ),

              ],
            ),
            Column(
              children: [
                SizedBox(height: 2.0.h,),

                InfoCard(
                  "https://image.shutterstock.com/image-illustration/3d-illustration-modern-school-300-260nw-1049762471.jpg",
                  "Pavan Concept School",
                  4.2,
                  "750",
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
