import 'package:flutter/material.dart';

import 'package:nosta/screens/Fee/new_payment.dart';
import 'package:nosta/screens/Fee/pastPayments.dart';

class Fee extends StatefulWidget {
  const Fee() ;

  @override
  _FeeState createState() => _FeeState();
}

class _FeeState extends State<Fee> {

  String payment = "";
  @override
  void initState(){
    super.initState();
        setState(() {
          payment = "";
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ),
        title: Hero(
          tag: "",
          child: Text(
            "FEE PAYMENT",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            payment!=""?SizedBox():Center(
              child: SizedBox(
                width: 300,
                height: 55.0,
                child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    heroTag :null,
                    child: Text(
                      "Past Payments"
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    onPressed: (){
                      setState(() {
                        payment = "past" ;
                      });
                    }


                ),
              ),
            ),
            SizedBox(height: 10,),
            payment!=""?SizedBox():Center(
              child: SizedBox(
                width: 300,
                height: 55.0,
                child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    heroTag :null,
                    child: Text(
                        "New Payment"
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    onPressed: (){
                      setState(() {
                        payment = "new";
                      });
                    }


                ),
              ),
            ),
            payment=="past"?PastPayments():SizedBox(),
            payment=="new"?NewPayment():SizedBox(),
          ],
        ),
      ),
    );
  }
}
