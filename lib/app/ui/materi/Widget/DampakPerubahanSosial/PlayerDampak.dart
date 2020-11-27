import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardDecorationWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerDampakScreen extends StatefulWidget {
  const PlayerDampakScreen({Key key}) : super(key: key);

  @override
  _PlayerDampakScreenState createState() => _PlayerDampakScreenState();
}

class _PlayerDampakScreenState extends State<PlayerDampakScreen> {
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: '0P-0aHwiGeg',
      flags: YoutubePlayerFlags(
        controlsVisibleAtStart: false,
        forceHD: false,
      ),
    );
    return Scaffold(
      body: Container(
        child: BGContainerWidget(
          kPaddingTop: context.mediaQueryPadding.top,
          content: Container(
            height: context.isTablet ? Get.height * 0.85 : Get.height * 0.9,
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: context.isTablet
                    ? Get.height * 0.1 / 2
                    : Get.height * 0.2 / 2),
            child: BoardBackground(
              dataContent: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                ),
                child: Container(
                  color: Colors.amber,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
            ),
          ),
          custombar: WidgetAppbarCloseMusic(),
        ),
      ),
    );
  }
}
