import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import 'package:sizer/sizer.dart';

class AttendanceDashboard extends StatefulWidget {
  const AttendanceDashboard() ;

  @override
  _AttendanceDashboardState createState() => _AttendanceDashboardState();
}

class _AttendanceDashboardState extends State<AttendanceDashboard> {

  List data = [
    ["Jan",21],
    ["Feb",28],
    ["Mar",30],
    ["April",31],
    ["May",18],
    ["June",26],
    ["July",30],
    ["Aug",26],
    ["Sep",20],
    ["Oct",30],
    ["Nov",30],
    ["Dec",24],

  ] ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Attendence Dashboard",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 3.0.h
              ),
            ),
            SfCartesianChart(
                isTransposed:true,
                enableSideBySideSeriesPlacement:false,
                // plotAreaBackgroundColor:Colors.transparent,
                // plotAreaBorderColor:Colors.transparent,
                enableAxisAnimation:true,

              series: <ChartSeries>[

              BarSeries(dataSource: data, xValueMapper: ( data,_)=>data[0], yValueMapper:( data,_)=>data[1], color: Colors.grey,)
            ],
              primaryXAxis: CategoryAxis(),

            ),
            Text(
              "Attendance Monthvise Sheet",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total Present :- 231/255",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                Text(
                  "94.3%",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Percentage is less than 95,please be regular to school",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "For Any Queries Contact :- 1234567890",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
