import 'package:flutter/material.dart';
import 'package:nosta/screens/studentDashboard.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:nosta/screens/reel/reelPage.dart';
import 'package:nosta/screens/notice_board/noticeBoard.dart' ;

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  final Widget page ;

  const BottomNavigation(this.currentIndex,this.page);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

    Widget  page  = Container();
    int currentIndex = 0;
  @override
  void initState(){
    super.initState();
    setState(() {
      page = widget.page ;
      currentIndex = widget.currentIndex ;

    });
  }
  Widget build(BuildContext context) {

    var tabs = [
      StudentDashBoard(),
      // StudentDashBoard(),
      ReelPage(),
      NoticeBoard(),
      // StudentDashBoard(),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0,end:1.0),
        duration: Duration(milliseconds: 1500),
        child: page,
        builder: (context,value,child){
          return ShaderMask(shaderCallback:(rect){
            return RadialGradient(
              radius: value*5,
              colors: [Colors.white,Colors.white,Colors.black26,Colors.black26,],
              stops: [0.0,0.55,0.6,1.0],
              center: FractionalOffset(0.95,0.90),
            ).createShader(rect);
          },child: child,);
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(

        backgroundColor: Colors.black,

        items: [
          Icon(Icons.dashboard_customize),
          // Icon(Icons.mail),
          Icon(
              Icons.camera_alt,
              size: 50,
            color: Colors.grey,
          ),
          // Icon(Icons.phone),
          Icon(Icons.add_alert),

        ],
        onTap: (index){

          // Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
          //   return BottomNavigation(index+1,tabs[index]) ;
          // },opaque: false));
          setState(() {
           page = tabs[index];
          });
        },
      ),
    );
  }
}
