import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


import 'package:nosta/screens/addSchool.dart';
import 'package:nosta/screens/login.dart';
import 'package:nosta/widgets/buttons.dart';
import 'package:nosta/screens/teacher/homescreen/homescreen.dart';
import 'package:nosta/screens/teacher/bottom_navigation_bar/bottomNavigation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
              builder: (context,orientation){

                SizerUtil().init(constraints, orientation);
                return MaterialApp(

                  home: MyHomePage(),
                );
              }
          );
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() ;


  @override

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  //
  // late AnimationController iconController =AnimationController(vsync: this,duration: Duration(milliseconds:1000));


  @override
  void initState(){
    super.initState();
    // iconController = AnimationController(vsync: this,duration: Duration(milliseconds:1000));
    // iconController.forward();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                          return BottomNavigation(1,HomeScreen()) ;
                        },opaque: false));

                      },
                      child: Button("Enter as a Teacher")
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                      child: Button("Enter as a Student/Parent"),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.clear,
        // animatedIconTheme: IconThemeData(size: 22),
        // backgroundColor: Colors.blue,
        curve: Curves.bounceIn,
        visible: true,
        buttonSize: 56.0,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        tooltip: 'Xtra fetaures',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [

          SpeedDialChild(
            child: Icon(Icons.group_add),
              label: 'All Users',
            onTap: (){
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      pageBuilder: (_, __, ___) => AddSchool()));
            }
          ),
          SpeedDialChild(
              child: Icon(Icons.help),
              label: 'Help',
              onTap: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        pageBuilder: (_, __, ___) => AddSchool()));
              }
          ),

        ],
      )
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.black87,
      //
      //   child: Container(height: 50.0,),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
