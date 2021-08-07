import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data( 'Blue', 40,  const Color(0xff0293ee)),
    Data( 'Orange', 30, const Color(0xfff8b250)),
    Data('Black', 15,Colors.black),
    Data('Green',  15,const Color(0xff13d38e)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data(this.name, this.percent, this.color);
}