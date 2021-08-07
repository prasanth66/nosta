import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/screens/login.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile() ;

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.white
        ),
        title: Text(
            "SAI TEJA",
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.share
            ),
            onPressed: () {

            },
          ),
        ],
        backgroundColor: Colors.white24,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(7.0.w, 2.0.h, 7.0.w, 2.0.h),

          child: Column(
            children: [
              Container(
                decoration: new BoxDecoration(
                  // color: Colors.blueGrey,
                  boxShadow: [
                    // color: Colors.white, //background color of box
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        -6.0, // Move to right 10  horizontally
                        -7.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.blueGrey,
                    boxShadow: [
                      // color: Colors.white, //background color of box
                      BoxShadow(
                        color: Colors.amber,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          6.0, // Move to right 10  horizontally
                          7.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                            color: Colors.white70,
                            width: 100.0.w,

                            child: Column(
                              children: [
                                SizedBox(height: 25.0.h,),
                                Text(
                                    "Sai Teja",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2.5.h
                                  ),
                                ),
                                Text(
                                    "Contact No :- xxxxxxxxxx",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 2.5.h
                                  ),
                                ),
                                Text(
                                    "Id :- 12345678",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 2.5.h
                                  ),
                                ),
                                SizedBox(height: 5.0.h,),


                              ],
                            )
                        ),
                      ),
                      Positioned(
                        child: Container(
                          color: Colors.blue,
                          height: 10.0.h,
                        ),
                      ),
                      Positioned(
                        left: 25.0.w,
                        top: 2.0.h,
                        child:  Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                      "http://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
                                    )
                                )
                            )),

                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.0.h,),
              Container(
                color: Colors.white,
                // decoration: new BoxDecoration(
                //   color: Colors.white,
                //   boxShadow: [
                //     // color: Colors.white, //background color of box
                //     BoxShadow(
                //       color: Colors.grey,
                //       blurRadius: 5.0, // soften the shadow
                //       spreadRadius: 0.0, //extend the shadow
                //       offset: Offset(
                //         3.0, // Move to right 10  horizontally
                //         3.0, // Move to bottom 10 Vertically
                //       ),
                //     )
                //   ],
                // ),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "QR Code",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 2.0.h,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 0.5.h,),
                        Icon(
                          Icons.qr_code_scanner,
                          size: 12.0.h,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Bar Code",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 2.0.h,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 1.5.h,),
                        Container(
                            width: 50.0.w,
                            height: 10.0.h,
                            decoration: new BoxDecoration(
                                // shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                     "https://static.vecteezy.com/system/resources/previews/001/199/360/non_2x/barcode-png.png"
                                    )
                                )
                            )),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 2.0.h,),
              SizedBox(
                width: 100.0.w,
                height: 7.0.h,
                child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    heroTag :null,
                    child: Text(
                        "Edit Your Details"
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))
                    ),
                    onPressed: (){

                    }


                ),
              ),
              SizedBox(height: 2.0.h,),
              SizedBox(
                width: 100.0.w,
                height: 7.0.h,
                child: FloatingActionButton(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.black,
                    heroTag :null,
                    child: Text(
                        "LOGOUT"
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))
                    ),
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ),
                            (route) => false,
                      );
                    }


                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
