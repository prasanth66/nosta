import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:nosta/widgets/location_loader.dart';

class BusTracking extends StatefulWidget {
  const BusTracking() ;

  @override
  _BusTrackingState createState() => _BusTrackingState();
}

class _BusTrackingState extends State<BusTracking> {

  String from = "";
  String to = "";
  bool isLoading = false ;
  @override
  void initState(){
    super.initState();
    setState(() {
      from = "Home";
      to = "School";
      isLoading = false;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ),
        title: Hero(
          tag: "",
          child: Text(
            "Bus Tracking",
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
      body: isLoading? LocationLoader(): Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              color: Colors.white,
              width: 80.0.w,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.white,
                value: from,
                items: <String>['Home',"XXXXX"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (data) {
                  setState(() {
                    from = data ;
                  });
                },

              ),
            ),
            SizedBox(height: 30,),
            Text(
              "TO",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Container(
              color: Colors.white,
              width: 80.0.w,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.white,
                value: to,
                items: <String>['School',"XXXXX"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (data) {
                  setState(() {
                    from = data ;
                  });
                },

              ),
            ),
            SizedBox(height: 30,),
           GestureDetector(
             onTap: (){
               setState(() {
                 isLoading = true;
               });
               Future.delayed(const Duration(milliseconds: 2000), () {
                 setState(() {
                   isLoading = false ;
                 });
               });
             },
             child: Container(
               color: Colors.white,
               child: Text(
                 "Track Bus"
               ),
             ),
           )

          ],
        ),
      ),
    );
  }
}
