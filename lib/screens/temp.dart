
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class A extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

var textStyle = TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
fontStyle: FontStyle.italic
);

List payments = [
{
"Status" : "Pending",
"Amount"  : "13000.0",
"Transaction Id"  : "IC45678R56",
"Date"    : "2021-06-22  5:34 pm"
},
{
"Status" : "Success",
"Amount"  : "20000.0",
"Transaction Id"  : "IC45678R56",
"Date"    : "2021-06-25  6:00 am"
}
];

  @override
  Widget build(BuildContext context) {
return Container(
  margin: EdgeInsets.all(15),

  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: (){},
            heroTag :null,
            mini: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            child: Icon(Icons.calendar_today),
          ),
          SizedBox(
            width: 280.0,
            height: 50.0,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              heroTag :null,
              child: Text(
                  "Search By Date......!"
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      SizedBox(height: 30,),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(

          border: Border.all(
              color: Colors.red,
              width: 4.0,
              style: BorderStyle.solid),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 3.0,
            ), //BoxShadow
          ],
        ),
        child: Slidable(
          actionPane: SlidableDrawerActionPane(),
          child: TextButton(
            // style:TextButton.styleFrom(
            //   padding: EdgeInsets.all(10),
            // ),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Status",
                        style: textStyle
                    ),
                    Text(
                        payments[0]["Status"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Amount",
                        style: textStyle
                    ),
                    Text(
                        payments[0]["Amount"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Transaction Id",
                        style: textStyle
                    ),
                    Text(
                        payments[0]["Transaction Id"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Date",
                        style: textStyle
                    ),
                    Text(
                        payments[0]["Date"],
                        style: textStyle
                    ),
                  ],
                )
              ],
            ),

            onPressed: (){},

          ),
          secondaryActions: [
            IconSlideAction(
              closeOnTap:false,
              color: Colors.amber,
              icon: Icons.mail,
              onTap: (){

              },
            ),
            IconSlideAction(
              closeOnTap:false,
              color: Colors.green,
              icon: Icons.phone,
              onTap: (){

              },
            ),
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.green,
              width: 4.0,
              style: BorderStyle.solid),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 3.0,
            ), //BoxShadow
          ],
        ),
        child: Slidable(
          actionPane: SlidableDrawerActionPane(),
          child: TextButton(
            // style:TextButton.styleFrom(
            //   padding: EdgeInsets.all(10),
            // ),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Status",
                        style: textStyle
                    ),
                    Text(
                        payments[1]["Status"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Amount",
                        style: textStyle
                    ),
                    Text(
                        payments[1]["Amount"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Transaction Id",
                        style: textStyle
                    ),
                    Text(
                        payments[1]["Transaction Id"],
                        style: textStyle
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Date",
                        style: textStyle
                    ),
                    Text(
                        payments[1]["Date"],
                        style: textStyle
                    ),
                  ],
                )
              ],
            ),

            onPressed: (){},

          ),
          secondaryActions: [
            IconSlideAction(
              closeOnTap:false,
              color: Colors.amber,
              icon: Icons.mail,
              onTap: (){

              },
            ),
            IconSlideAction(
              closeOnTap:false,
              color: Colors.green,
              icon: Icons.phone,
              onTap: (){

              },
            ),
          ],

        ),
      ),

    ],
  ),
);

}
}
