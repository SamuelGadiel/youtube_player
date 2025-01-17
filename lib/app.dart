import 'package:flutter/material.dart';
import 'package:youtube_player/video_player_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const VideoPlayerPage("BqSp82KenVU"),
    );
  }
}
