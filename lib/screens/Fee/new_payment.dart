import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';
import 'package:flip_card/flip_card.dart';


class NewPayment extends StatefulWidget {
  const NewPayment() ;

  @override
  _NewPaymentState createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPayment> {

  bool shouldFlip = false ;
  String selectedBank = "";
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  void initState(){
    super.initState();
    setState(() {
      shouldFlip = false ;
      selectedBank = "SBI Bank" ;

    });
  }
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0.w, 0, 5.0.w, 0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Amount Paying :- 2090",
            style: TextStyle(
              fontSize: 2.3.h,
              // fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Amount Paying For:- ExamFee",
            style: TextStyle(
                fontSize: 2.3.h,
                // fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Select Bank to pay :-",
            style: TextStyle(
              fontSize: 2.3.h,
              // fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(8.0.w, 0, 8.0.w,0),
            child: DropdownButton(
              value: selectedBank,

            isExpanded: true ,
              style: TextStyle(color: Colors.black),
              iconEnabledColor:Colors.grey,
              items: <String>["SBI Bank", "Andhra Bank", "ICICI Bank"].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style:TextStyle(color:Colors.black),),
                );
              }).toList(),
              hint:Text(
                "Please choose a Bank",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  selectedBank = value;
                });
              },
            ),
          ),

        FlipCard(
          flipOnTouch : false ,
          key: cardKey,
        direction: FlipDirection.HORIZONTAL, // default
        front: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 35.0.h,
              width: 100.0.w,
              margin: EdgeInsets.fromLTRB(0.0.w, 3.0.h, 0.0.w, 3.0.h),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          selectedBank,
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // width: 80.0.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white)
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                            hintText: "    Enter 16 digit Card Number",
                            hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.white)
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Valid Upto",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 20.0.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                            decoration: InputDecoration(
                                hintText: "   dd/yy  ",
                                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.white,)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50.0.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)
                          ),
                          child: TextField(
                            // keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                            decoration: InputDecoration(
                                hintText: "    Card Holder Name",
                                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.white)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.all(Radius:10.0)
                        ),
                        child: Center(
                          child: Text(
                            "VISA",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: TextButton(
                onPressed: (){
                  cardKey.currentState.toggleCard();
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic
                  ),
                ),
              ),
            )
          ],
        ),
        back: Container(

          child: Column(
            children: [
              Container(
                height: 35.0.h,
                width: 100.0.w,
                margin: EdgeInsets.fromLTRB(0.0.w, 3.0.h, 0.0.w, 3.0.h),
                decoration: BoxDecoration(
                    color: Colors.black
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            selectedBank,
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Customer Care No:- xxxxxxxxx",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 6.0.h,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 5.0.h,
                        ),
                        Container(
                          width: 50.0.w,
                          height: 5.0.h,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                top:0.5.h,
                                child: Container(
                                  width: 50.0.w,
                                  height: 0.5.h,
                                  color: Colors.black26,
                                ),
                              ),
                              Positioned(
                                top:2.3.h,
                                child: Container(
                                  width: 50.0.w,
                                  height: 0.5.h,
                                  color: Colors.black26,
                                ),
                              ),
                              Positioned(
                                top:4.0.h,
                                child: Container(
                                  width: 50.0.w,
                                  height: 0.5.h,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 20.0.w,
                          height: 5.0.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                            decoration: InputDecoration(
                                hintText: "   CVV ",
                                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.white,)
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
              color:Colors.black,
                    child: TextButton(
                      onPressed: (){
                        cardKey.currentState.toggleCard();
                      },
                      child: Text(
                          "BACK"
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    color:Colors.black,
                    child: TextButton(
                      onPressed: (){
                        // cardKey.currentState.toggleCard();
                      },
                      child: Text(
                          "SUBMIT"
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ),
      )
        ],
      ),
    );
  }
}
