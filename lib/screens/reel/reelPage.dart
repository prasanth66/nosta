import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sizer/sizer.dart';

import 'package:nosta/screens/reel/reelContent.dart';



class ReelPage extends StatefulWidget {
  const ReelPage();

  @override
  _ReelPageState createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {

  var reels = [
    "https://thestyletraveller.com/wp-content/uploads/2019/04/IMG_4054_Facetune_08-04-2019-08-15-04-768x1024.jpg",
    "https://fashiontravelrepeat.com/wp-content/uploads/2019/03/Vegas-blog-13.jpg",
    "https://arkenea.com/wp-content/uploads/2021/01/girl-2940655_640.jpg",
   "https://i.pinimg.com/originals/83/d1/2c/83d12ce4a21910324cba39e03c77b4a7.jpg",
    "https://photodoto.com/wp-content/uploads/2013/05/15-best-instagram-accounts.jpg?ezimgfmt=rs:379x376/rscb21/ng:webp/ngcb21",
  ];




  @override
  void initState(){
    super.initState();

  }

  void dispose(){
    super.dispose();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Swiper(
                itemBuilder: (BuildContext context , int index){
                  return Stack(
                    children: [
                      ReelContent(src: reels[index],),
                      Positioned(
                        top: 70.0.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black,
                                  size: 6.0.h,

                                ),
                                Text(
                                  "SRM University",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 2.3.h,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "This is the Culture where we are,",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50.0.h,
                        left: 88.0.w,
                        child: Column(
                          children: [
                            Icon(
                              Icons.visibility_outlined,
                              color: Colors.white,
                              size: 4.0.h,
                            ),
                            Text(
                              "102k",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            SizedBox(height: 2.0.h,),
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                              size: 4.0.h,
                            ),
                            Text(
                              "21k",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: reels.length,
                scrollDirection: Axis.vertical,
              ),

            ],
          ),
        ),
      )
    );
  }
}
