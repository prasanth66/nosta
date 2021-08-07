import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Button extends StatefulWidget {

  final buttonTitle ;
  const Button(this.buttonTitle) ;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:80.0.w,
      height: 7.0.h,
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
      child: Center(
        child: Text(
          widget.buttonTitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 2.0.h

          ),
        ),
      ),
    );
  }
}
