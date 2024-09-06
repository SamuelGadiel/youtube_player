import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoId;

  const VideoPlayerPage(this.videoId);

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      params: YoutubePlayerParams(
        autoPlay: false,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "App de teste:\nPlayer de video do Youtube",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 16, right: 12),
              child: YoutubePlayerIFrame(
                controller: _controller,

                // showVideoProgressIndicator: true,

                // videoProgressIndicatorColor: Colors.amber,
                // progressColors: ProgressBarColors(
                //     playedColor: Colors.amber,
                //     handleColor: Colors.amberAccent,
                // ),
                // onReady () {
                //     _controller.addListener(listener);
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
