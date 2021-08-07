import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_glow/flutter_glow.dart';


class Market extends StatefulWidget {
  const Market();

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.white
        ),
        title: Text(
          "Market Place",
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.add_alert_rounded
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(
                Icons.shopping_cart
            ),
            onPressed: () {

            },
          ),
        ],
        backgroundColor: Colors.white24,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 18.0.h,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(color: Colors.amber,width: 4),

                borderRadius: BorderRadius.circular(10),

                image: const DecorationImage(
                  image: NetworkImage(
                    "https://www.clipartmax.com/png/middle/104-1049385_image-result-for-animated-person-with-school-uniform-rowlands-gill-primary-logo.png"
                  ),
                  fit: BoxFit.fitWidth,
                ),

              ),
              child: Center(
                child: GlowText(
                  "Uniform",
                  glowColor: Colors.white,
                  // blurRadius:20.0,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              height: 18.0.h,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(color: Colors.amber,width: 4),

                borderRadius: BorderRadius.circular(10),

                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1356&h=668&fit=crop"
                  ),
                  fit: BoxFit.fitWidth,
                ),

              ),
              child: Center(
                child: GlowText(
                  "Books",
                  glowColor: Colors.white,
                  // blurRadius:20.0,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              height: 18.0.h,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(color: Colors.amber,width: 4),

                borderRadius: BorderRadius.circular(10),

                image: const DecorationImage(
                  image: NetworkImage(
                    "https://st2.depositphotos.com/1670531/7918/i/600/depositphotos_79182376-stock-photo-tablet-school-mockup.jpg"
                  ),
                  fit: BoxFit.fitWidth,
                ),

              ),
              child: Center(
                child: GlowText(
                  "Stationary",
                  glowColor: Colors.white,
                  // blurRadius:20.0,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              height: 18.0.h,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(color: Colors.amber,width: 4),

                borderRadius: BorderRadius.circular(10),

                image: const DecorationImage(
                  image: NetworkImage(
                    "https://cdn.vox-cdn.com/thumbor/ZXo1S9HKPSdM07jamfgA6QPzo8I=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/66803622/akrales_190424_3301_0426.0.jpg"
                  ),
                  fit: BoxFit.fitWidth,
                ),

              ),
              child: Center(
                child: GlowText(
                  "Gadgets",
                  glowColor: Colors.white,
                  // blurRadius:20.0,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
