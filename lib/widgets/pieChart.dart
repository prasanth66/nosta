import 'package:flutter/material.dart';
import 'package:nosta/data/chart.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

enum LegendShape { Circle, Rectangle }


class PieChartPage extends StatefulWidget {
  const PieChartPage() ;

  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  Map<String, double> dataMap = {
    "Present": 5,
    "Absent": 3,
    "Holidays": 2,

  };
  List<Color> colorList = [
    Colors.green,
    Colors.red,
    Colors.amber,

  ];


  @override
  Widget build(BuildContext context) {

    return Container(
      child: PieChart(
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 32,
        chartRadius: MediaQuery.of(context).size.width / 2.0,
        colorList: colorList,
        initialAngleInDegree: 0,
        chartType: ChartType.ring,
        ringStrokeWidth: 32,
        centerText: "ATTENDENCE",
        legendOptions: LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.right,
          showLegends: true,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: false,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
          decimalPlaces: 1,
        ),
      ),
    );
  }
}


