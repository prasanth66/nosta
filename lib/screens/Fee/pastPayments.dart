import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class PastPayments extends StatefulWidget {
  const PastPayments() ;

  @override
  _PastPaymentsState createState() => _PastPaymentsState();
}

class _PastPaymentsState extends State<PastPayments> {

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

  List<bool> isOpen = [];

  var textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic
  );

  var headerStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    fontSize: 16,

  );

  var colStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );


  @override

  void initState(){
    super.initState();
    setState(() {
      isOpen = [false,false];
    });
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15),
        child: ExpansionPanelList(
          animationDuration: Duration(seconds: 1),
          dividerColor: Colors.purple,
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(8),
          children: [
            ExpansionPanel(
              headerBuilder: (context,isOpen){
                return Container(
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
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
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
                );
              },
              body: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text("DOWNLOAD"),
                      ),
                      Table(
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(
                              children: [
                                Text(
                                  "S.No",
                                  style: headerStyle,
                                ),
                                Text(
                                  "Category",
                                  style: headerStyle,
                                ),
                                Text(
                                  "Amount",
                                  style: headerStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "1",
                                  style: colStyle,
                                ),
                                Text(
                                  "Books Fee",
                                  style: colStyle,
                                ),
                                Text(
                                  "1000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "2",
                                  style: colStyle,
                                ),
                                Text(
                                  "Extra curricular Fee ",
                                  style: colStyle,
                                ),
                                Text(
                                  "5000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "3",
                                  style: colStyle,
                                ),
                                Text(
                                  "ERP Management Fee",
                                  style: colStyle,
                                ),
                                Text(
                                  "14000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "",
                                  style: colStyle,
                                ),
                                Text(
                                  "Total",
                                  style: colStyle,
                                ),
                                Text(
                                  "20000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              isExpanded: isOpen[0]
            ),

            ExpansionPanel(
                headerBuilder: (context,isOpen){
                  return Container(
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
                          color: Colors.black,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
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
                  );
                },
                body: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text("DOWNLOAD"),
                      ),
                      Table(
                        
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(
                              children: [
                                Text(
                                  "S.No",
                                  style: headerStyle,
                                ),
                                Text(
                                  "Category",
                                  style: headerStyle,
                                ),
                                Text(
                                  "Amount",
                                  style: headerStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "1",
                                  style: colStyle,
                                ),
                                Text(
                                  "Books Fee",
                                  style: colStyle,
                                ),
                                Text(
                                  "1000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "2",
                                  style: colStyle,
                                ),
                                Text(
                                  "Extra curricular Fee ",
                                  style: colStyle,
                                ),
                                Text(
                                  "5000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "3",
                                  style: colStyle,
                                ),
                                Text(
                                  "ERP Management Fee",
                                  style: colStyle,
                                ),
                                Text(
                                  "14000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text(
                                  "",
                                  style: colStyle,
                                ),
                                Text(
                                  "Total",
                                  style: colStyle,
                                ),
                                Text(
                                  "20000",
                                  style: colStyle,
                                ),
                              ]
                          ),
                        ],
                      ),
                    ],
                  )
                ),
                isExpanded: isOpen[1]
            )
          ],
          expansionCallback: (index,open)=>
              setState((){
                isOpen[index]  = !open ;
              })
        ),
      ),
    );

  }
}


