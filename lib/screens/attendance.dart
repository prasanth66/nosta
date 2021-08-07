import 'package:flutter/material.dart';
import 'package:nosta/widgets/pieChart.dart';
import 'package:table_calendar/table_calendar.dart';




class Attendance extends StatefulWidget {
  const Attendance() ;

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> with SingleTickerProviderStateMixin{

  // List absentDates = [];
  // List holidayDates  = [];
  // bool showAnimation = true ;
  //  final AnimationController _controller = AnimationController(
  //   duration: const Duration(seconds: 2),
  //   vsync: this,
  // )..repeat(reverse: true);
  //  final Animation<double> _animation = CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.elasticOut,
  // );
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setState(() {
  //     absentDates = ["2021-06-1",5,10];
  //     holidayDates = [2,6,20];
  //   });
  //   Future.delayed(const Duration(milliseconds: 6000), () {
  //     setState(() {
  //       showAnimation = false ;
  //     });
  //
  //   });
  // }
  //
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context){
    return Scaffold(
      body: Text("atte"),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       iconTheme:IconThemeData(
  //           color: Colors.black
  //       ),
  //       title: Hero(
  //         tag: "",
  //         child: Text(
  //             "ATTENDANCE",
  //           style: TextStyle(
  //             color: Colors.black
  //           ),
  //         ),
  //       ),
  //       actions: [
  //         IconButton(
  //           icon: Icon( Icons.menu_outlined,size: 35, ),
  //           onPressed: () { },
  //         ),
  //       ],
  //       leading:FloatingActionButton(
  //         onPressed: (){},
  //         backgroundColor: Colors.white,
  //         foregroundColor: Colors.black,
  //         heroTag :null,
  //         mini: true,
  //         elevation : 0 ,
  //         child:Icon( Icons.home_outlined,size: 40, ),
  //       ),
  //       backgroundColor: Colors.white,
  //       centerTitle: true,
  //     ),
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           SizedBox(height: 10,),
  //           Container(
  //
  //             decoration: BoxDecoration(
  //               border: Border.all(color: Colors.grey,width: 1.0,style: BorderStyle.solid),
  //               color: Colors.white12,
  //             ),
  //             margin: EdgeInsets.all(10),
  //             child: TableCalendar(
  //               firstDay: DateTime.utc(2010, 10, 16),
  //               lastDay: DateTime.utc(2030, 3, 14),
  //               focusedDay: DateTime.now(),
  //               headerStyle: HeaderStyle(
  //                   titleCentered : true ,
  //                   formatButtonVisible : false,
  //                   leftChevronMargin : EdgeInsets.symmetric(horizontal: 0),
  //                   rightChevronMargin : EdgeInsets.symmetric(horizontal: 0),
  //                   decoration : BoxDecoration(
  //
  //                   )
  //
  //               ),
  //               calendarBuilders: CalendarBuilders(
  //                 rangeHighlightBuilder : (context,day,flag){
  //                   String value = (day.toString().substring(0,10));
  //                   String present = DateTime.now().toString().substring(0,10);
  //                   // print(absentDates[0]);
  //                   print(value.toString()=="2021-06-1");
  //                   // print(value);
  //                   if (absentDates[0]==(value.toString())) {
  //                     return Container(
  //                       width: 27.0,
  //                       height: 50.0,
  //                       decoration: new BoxDecoration(
  //                         color: Color.fromRGBO(0, 174, 155, 1),
  //                         shape: BoxShape.circle,
  //                       ),
  //
  //
  //                     );
  //
  //                   }
  //                   return null ;
  //                 },
  //
  //               ),
  //             ),
  //           ),
  //           SizedBox(height: 40,),
  //
  //           showAnimation ? RotationTransition(
  //             turns: _animation,
  //             child: const Padding(
  //               padding: EdgeInsets.all(8.0),
  //               child: PieChartPage(),
  //             ),
  //           ): PieChartPage()
  //
  //         ],
  //       ),
  //     ),
  //   );
  // }


}
