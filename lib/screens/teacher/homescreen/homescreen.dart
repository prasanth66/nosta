import 'package:flutter/material.dart';
import 'package:nosta/screens/market/market.dart';
import 'package:sizer/sizer.dart';


import 'package:nosta/widgets/buttons.dart';
import 'package:nosta/screens/teacher/time_table/timeTable.dart';
import 'package:nosta/screens/teacher/teacher_profile/teacherProfile.dart';
import 'package:nosta/screens/teacher/students/students.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var menuOPtions = [
    {
      "text" : "Market Place",
      "logo"  : Icons.shopping_cart,
      "page"  : Market(),
    },
    {
      "text" : "Patent Register",
      "logo"  : Icons.open_in_new_rounded,
      "page"  : null,
    },
    {
      "text" : "Mazagine",
      "logo"  : Icons.bubble_chart,
      "page"  : null,
    },
    {
      "text" : "Settings",
      "logo"  : Icons.settings,
      "page"  : null,
    },
    {
      "text" : "Privacy Policy",
      "logo"  : Icons.headset,
      "page"  : null,
    },
    {
      "text" : "Logout",
      "logo"  : Icons.logout,
      "page"  : null,
    },
  ];

  bool opened = false ;

  List dashBoard = [
    {
      "name" : "Students",
      "image_url" : Icons.wc,
      "page"  : Students(),
      "color" : Colors.lightBlueAccent,
    },
    {
      "name" : "SYLLABUS",
      "image_url" : Icons.file_copy,
      "page"  : null,
      "color" : Colors.yellow,
    },
    {
      "name" : "Salary",
      "image_url" : Icons.monetization_on,
      "page"  : null,
      "color" : Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          iconTheme:IconThemeData(
              color: Colors.white
          ),
          title: Column(
            children: [
              Text(
                "Ramya Kumari",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              Text(
                "BA B.Ed degree",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300
                ),
              )
            ],
          ),
          actions: [
            Icon( opened?Icons.clear:Icons.notifications,size: 35, ),
            SizedBox(width: 1.0.w,),
            PopupMenuButton(
              child: Center(child: Icon( opened?Icons.clear:Icons.menu_outlined,size: 35, )),
              color: Colors.black38,
              itemBuilder: (context) {
                return menuOPtions.map ((data)=>
                    PopupMenuItem(
                      textStyle: TextStyle(
                          color: Colors.white
                      ),
                      child: GestureDetector(
                        onTap: (){
                          if(data["page"]!=null){
                            Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                              return data["page"] ;
                            }));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [Colors.white70, Colors.black26],
                            ),
                            // boxShadow: [
                            //   new BoxShadow(
                            //     color: Colors.grey,
                            //     offset: new Offset(10.0, 10.0),
                            //   ),
                            // ],
                            // image: const DecorationImage(
                            //   image: NetworkImage('https://www.pinclipart.com/picdir/big/211-2119839_snowflakes-transparent-background-free-snowflakes-png-clipart.png'),
                            //   fit: BoxFit.cover,
                            // ),

                          ),
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 2.0.w,),
                              Icon(data["logo"]),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  data["text"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),


                    )).toList();

              },

            ),
            SizedBox(width: 3.0.w,),

          ],
          backgroundColor: Colors.white24,
          centerTitle: true,
          leading:AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                    return TecaherProfile() ;
                  }));
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                heroTag :null,
                mini: true,
                elevation : 0 ,
                child:Icon( Icons.account_circle_sharp,size: 40, ),
              ),
              transitionBuilder: (Widget child,Animation<double>animation){
                return ScaleTransition(child: child,scale: animation,);
              }
          )

      ),
      body: Container(
        color: Colors.black,
        child: GridView.count(
            crossAxisCount: 2,
            // childAspectRatio: (2 / 1),
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            physics:BouncingScrollPhysics(),
            padding: EdgeInsets.all(20.0),
            children: dashBoard.map<Widget>(
                    (data)=>GestureDetector(
                  onTap: (){
                    print(data["page"]);
                    if(data["page"]!=null){
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                        return data["page"] ;
                      },opaque: false));
                    }
                  },
                  child: Container(
                    // width:80.0.w,
                    // height: 7.0.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          data["image_url"],
                          size: 100,
                          color: data["color"],
                        ),
                        Expanded(
                            child: Text(
                              data["name"].toString(),
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )
                        )

                      ],
                    ),
                  ),
                )

            ).toList()
        ),
      ),
    );
  }
}
