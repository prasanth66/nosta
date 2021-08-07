import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:rive/rive.dart';

import 'package:nosta/screens/allUsers/bottomNavigationBar.dart';
import 'package:nosta/screens/allUsers/schools/schools.dart';

class AddSchool extends StatefulWidget {
  const AddSchool() ;

  @override
  _AddSchoolState createState() => _AddSchoolState();
}

class _AddSchoolState extends State<AddSchool> {

  Artboard _riveArtboard;
  RiveAnimationController _controller;
  final riveFileName =  'assets/teddy.riv';
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();

  @override
  void initState(){
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
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   iconTheme:IconThemeData(
      //     color: Colors.black
      //   ),
      //   title: Text(
      //       "Registeration",
      //     style: TextStyle(
      //       color: Colors.black
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 80.0.w,
            height: 90.0.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Container(
                    height: 30.0.h,
                    width: 80.0.w,
                    child:  _riveArtboard ==null
                        ?SizedBox()
                        :Rive(artboard: _riveArtboard,fit: BoxFit.cover,alignment: Alignment.center,)
                ),
                SizedBox(height: 5,),
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
                SizedBox(
                  width: 20.0.w,
                  height: 6.0.h,

                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                        return BottomBar(1,Schools()) ;
                      }));
                    },
                    backgroundColor: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Login",
                          // style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 4.0.h
                          // ),
                        ),

                      ],
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                  ),
                ),
                SizedBox(height: 2.0.h,),
                SizedBox(
                  width: 80.0.w,
                  height: 6.0.h,

                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "G",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 4.0.h
                          ),
                        ),
                        Text(
                          "Login With Google",
                          // style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 4.0.h
                          // ),
                        ),
                      ],
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                  ),
                ),
                SizedBox(height: 2.0.h,),
                SizedBox(
                  width: 80.0.w,
                  height: 6.0.h,

                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Click Here To Register",
                          style: TextStyle(
                            color: Colors.black,
                              fontWeight: FontWeight.bold,
                              // fontSize: 4.0.h
                          ),
                        ),
                      ],
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                  ),
                ),
                SizedBox(height: 5.0.h,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
