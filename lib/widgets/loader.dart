import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

class Loader extends StatefulWidget {
  const Loader();

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {

  final riveFileName =  'assets/loader.riv';
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override

  void initState() {
    super.initState();
    rootBundle.load(riveFileName).then(
          (data) async {
        final file = RiveFile();

        if (file.import(data)) {
          final artboard = file.mainArtboard;

          artboard.addController(_controller = SimpleAnimation('Main loop'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
            height: 30.0.h,
            width: 70.0.w,

            child:  _riveArtboard ==null
                ?SizedBox()
                :Rive(artboard: _riveArtboard,fit: BoxFit.cover,alignment: Alignment.center,)
        ),
      ),
    );
  }
}
