import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/screens/studentDashboard.dart';
import 'package:nosta/widgets/buttons.dart';
import 'package:nosta/widgets/bottomNavigationBar.dart';
import 'package:nosta/screens/reel/reelPage.dart';



class Login extends StatefulWidget {
  const Login() ;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var teddyState = ["idle"];
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final riveFileName =  'assets/teddy.riv';
    Artboard _riveArtboard;
   RiveAnimationController _controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    rootBundle.load(riveFileName).then(
          (data) async {
        final file = RiveFile();

        if (file.import(data)) {
          final artboard = file.mainArtboard;

          artboard.addController(_controller = SimpleAnimation('idle'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );

    passwordFocusNode.addListener(() {
      if(passwordFocusNode.hasFocus){
        _riveArtboard.removeController(_controller);
        _riveArtboard.addController(
            _controller = SimpleAnimation('hands_up'));
      }
      else{

      }
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30.0.h,
                width: 70.0.w,
                color: Colors.red,
                  

                child:  _riveArtboard ==null
                  ?SizedBox()
                    :Rive(artboard: _riveArtboard,fit: BoxFit.cover,alignment: Alignment.center,)
              ),
              SizedBox(height: 5,),
              SizedBox(
                width: 85.0.w,
                height: 7.0.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
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
                  child: TextField(
                    onChanged: (text){
                      print("!!!!!!!!!!!!!!!");
                      _riveArtboard.removeController(_controller);
                      _riveArtboard.addController(
                          _controller = SimpleAnimation('Look',mix: 0.50));
                    },
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                    maxLines: 3,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.account_circle_sharp,
                          size: 5.0.h,
                          color: Colors.white,
                        ),

                      border: InputBorder.none,
                        contentPadding:EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Enter UserName...",
                      hintStyle: TextStyle(fontSize: 2.3.h, color: Colors.white),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 85.0.w,
                height: 7.0.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
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
                  child: TextFormField(
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                    maxLines: 3,
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_outline_rounded,
                        size: 4.0.h,
                        color: Colors.white,
                      ),

                      border: InputBorder.none,
                      contentPadding:EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Enter Password...",
                      hintStyle: TextStyle(fontSize: 2.3.h, color: Colors.white),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    child: Icon(
                        Icons.arrow_back
                    ),
                    backgroundColor: Colors.white38,
                    foregroundColor: Colors.black,
                    heroTag :"btn1",
                    onPressed: (){
                      Navigator.pop(context);
                    },

                  ),
                  FloatingActionButton(
                    child: Icon(
                      Icons.arrow_forward_rounded
                    ),
                    backgroundColor: Colors.white38,
                    foregroundColor: Colors.black,
                    heroTag :"btn3",
                    onPressed: (){
                      if(true){
                        print(teddyState[0]);
                        _riveArtboard.removeController(_controller);
                        _riveArtboard.addController(
                            _controller = SimpleAnimation('success'));

                      }
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                        return BottomNavigation(1,StudentDashBoard()) ;
                      },opaque: false));
                    },



                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
