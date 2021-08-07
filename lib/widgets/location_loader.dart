import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

class LocationLoader extends StatefulWidget {
  const LocationLoader() ;

  @override
  _LocationLoaderState createState() => _LocationLoaderState();
}

class _LocationLoaderState extends State<LocationLoader> {

  final riveFileName =  'assets/location_loader.riv';
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

          artboard.addController(_controller = SimpleAnimation('Animation 1'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }
  Widget build(BuildContext context) {
    return Container();
  }
}
