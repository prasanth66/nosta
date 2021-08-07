import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class ReelContent extends StatefulWidget {
  
  final String src ;
  const ReelContent({this.src}) ;

  @override
  _ReelContentState createState() => _ReelContentState();
}

class _ReelContentState extends State<ReelContent> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController ;
  bool isLiked = false ;


  @override
  void initState(){
    super.initState();
    initializePlayer();
}

@override
void dispose(){
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
}

Future initializePlayer()async{
    videoPlayerController = VideoPlayerController.network(widget.src);
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
      showControls: false,
      looping: true,
      // fullScreenByDefault: true
    );
    setState(() {

    });
}
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          widget.src,
          fit: BoxFit.cover,
        )
      ],
    );
    // return Stack(
    //   fit: StackFit.expand,
    //   children: [
    //    chewieController !=null &&
    //   chewieController.videoPlayerController.value.isInitialized
    //     ?GestureDetector(
    //      onDoubleTap: (){
    //        setState(() {
    //          isLiked = !isLiked ;
    //        });
    //      },
    //       child: Chewie(
    //        controller: chewieController,
    //    ),
    //     )
    //     : Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         CircularProgressIndicator(),
    //         SizedBox(height: 10,),
    //         Text("Loading...")
    //       ],
    //     ),
    //     // if(isLiked)
    //     //   Center(child: LikeIcon(),)
    //
    //   ],
    // );
  }
}
