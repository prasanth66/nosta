import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students() ;

  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {

  List dashBoard = [
    {
      "name" : "DASHBOARD",
      "image_url" : Icons.bar_chart,
      "page"  : null,
      "color" : Colors.lightBlueAccent,
    },
    {
      "name" : "ATTENDANCE",
      "image_url" : Icons.accessibility_outlined,
      "page"  : null,
      "color" : Colors.yellow,
    },
    {
      "name" : "HOMEWORK",
      "image_url" : Icons.water_damage_rounded,
      "page"  : null,
      "color" : Colors.purpleAccent,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ),
        title: Text(
          "Students",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.menu
            ),
            onPressed: () {

            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
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
