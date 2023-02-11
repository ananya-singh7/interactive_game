import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interactive_game/character.dart';
import 'package:interactive_game/ques1.dart';

import 'package:video_player/video_player.dart';

void main() =>runApp(part1());

class part1 extends StatefulWidget {
  const part1({Key? key}) : super(key: key);

  @override
  _part1State createState() => _part1State();
}

class _part1State extends State<part1> {
  // TODO 4: Create a VideoPlayerController object.
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.asset("assets/images/A1.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.addListener(() {
          if (_controller.value.position == _controller.value.duration) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ques1()),
            );
          }
        });
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      theme: ThemeData(
        // Adjusted theme colors to match logo.
        primaryColor: const Color(0xffb55e28),
      ),

      home: SafeArea(
        child: Scaffold(
          // TODO 6: Create a Stack Widget
          body: Stack(
            children: <Widget>[
              // TODO 7: Add a SizedBox to contain our video.
              SizedBox.expand(
                child: FittedBox(
                  // If your background video doesn't look right, try changing the BoxFit property.
                  // BoxFit.fill created the look I was going for.
                  fit: BoxFit.fill,
                  child: SizedBox(
                    width: _controller.value.size.aspectRatio,
                    height: _controller.value.size.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO 8: Override the depose() method to cleanup the video controller.
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}