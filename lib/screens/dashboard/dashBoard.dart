import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/widgets/loader.dart';
import 'package:nosta/screens/dashboard/attendance_dashboard.dart';
import 'package:nosta/screens/dashboard/exams_dashboard.dart';


class DashBoard extends StatefulWidget {
  const DashBoard() ;

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  bool isLoading = true ;
  @override
  void initState(){
    super.initState();
    setState(() {
      isLoading = true ;
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        isLoading = false ;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ),
        title: Hero(
          tag: "",
          child: Text(
            "Student Dashboard",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon( Icons.menu_outlined,size: 35, ),
            onPressed: () { },
          ),
        ],
        leading:FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          heroTag :null,
          mini: true,
          elevation : 0 ,
          child:Icon( Icons.home_outlined,size: 40, ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:isLoading?Loader()
          :
      Container(
        // padding: EdgeInsets.all(10),
        child: VerticalTabs(
          tabsWidth: 16.0.w,

          // indicatorColor:Colors.black,
          backgroundColor:Colors.black87,
          tabsShadowColor:Colors.white,

          // selectedTabBackgroundColor: Colors.white,
          tabsElevation:10,
          tabs: <Tab>[
            Tab(child: Icon(Icons.account_circle,size: 40,),),
            Tab(child: Icon(Icons.book,size: 40,),),

          ],
          contents: <Widget>[
            AttendanceDashboard(),
            ExamsDashBoard(),
          ],
        ),
      )
    );
  }
}
