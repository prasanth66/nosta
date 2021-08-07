import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';



class ExamsDashBoard extends StatefulWidget {
  const ExamsDashBoard() ;

  @override
  _ExamsDashBoardState createState() => _ExamsDashBoardState();
}

class _ExamsDashBoardState extends State<ExamsDashBoard> {

  List data = [];
  List data2 = [] ;
  String value = "";
  @override
  void initState(){
    super.initState();
    setState(() {
      data = [
        [1,96],
        [2,92],
        [3,94],
      ];
      data2 = [
        ["English",91],
        ["Maths",88],
        ["Science",76],
        ["Biology",85],
        ["GK",100],

      ];
      value = "Overall DashBoard";
    });
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Exams Dashboard",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 3.0.h,

            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            width: 70.0.w,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  dropdownColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  value: value,
                  items: <String>['Overall DashBoard', 'Quaterly DashBoard', 'Half Yearly DashBoard', 'Annually DashBoard'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (data) {
                    setState(() {
                      value = data ;
                    });
                  },

                ),
                Icon(
                    Icons.arrow_drop_down_circle_rounded
                )
              ],
            )
          ),
          SizedBox(height: 20,),
          value == "Overall DashBoard"?
          Column(
            children: [
              SfCartesianChart(
                series: [
                  LineSeries(
                    dataSource: data,
                    xValueMapper: (data,_)=>data[0],
                    yValueMapper: (data,_)=>data[1],
                    dataLabelSettings: DataLabelSettings(isVisible: true,color: Colors.white),
                      color: Colors.grey

                  ),
                ],
                // primaryXAxis: NumericAxis(
                //   numberFormat:
                // ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The over all growth rate is decreasing compare to previous tests,please Do more hardwork",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ],
          )
          :
          Column(
            children: [
              SfCartesianChart(
                isTransposed:true,
                enableSideBySideSeriesPlacement:false,
                // plotAreaBackgroundColor:Colors.transparent,
                // plotAreaBorderColor:Colors.transparent,
                enableAxisAnimation:true,
                series: <ChartSeries>[
                  BarSeries(
                      dataSource: data2,
                      xValueMapper: ( data2,_)=>data2[0],
                      yValueMapper:( data2,_)=>data2[1],
                      color: Colors.grey
                  ),

                ],
                primaryXAxis: CategoryAxis(),

              ),
              SizedBox(height: 20,),
              Text(
                "You are Lacking in Science and Biology",
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
