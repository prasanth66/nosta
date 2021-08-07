import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  const Alerts() ;

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Alerts From Schooll"
        ),
      ),
    );
  }
}
