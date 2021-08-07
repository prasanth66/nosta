import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:nosta/screens/allUsers/schools/schools.dart';
import 'package:nosta/screens/allUsers/colleges/colleges.dart';
import 'package:nosta/screens/allUsers/coachingCenters/coachingCenters.dart';
import 'package:nosta/screens/reel/reelPage.dart';

class BottomBar extends StatefulWidget {

  final int currentIndex;
  final Widget page ;

  const BottomBar(this.currentIndex,this.page) ;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

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
  var tabs = [
    Schools(),
    Colleges(),
    ReelPage(),
    CoachingCenters(),

  ];
  Widget build(BuildContext context) {
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
          Icon(Icons.school_sharp),
          Icon(Icons.home_outlined),
          Icon(Icons.camera_alt),
          Icon(Icons.deck),


        ],
        onTap: (index){
          setState(() {
            page = tabs[index];
          });
        },
      ),
    );
  }
}
