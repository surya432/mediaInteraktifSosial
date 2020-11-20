import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Setting/SettingScreen.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/QuizScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        defaultImages: "assets/images/BG02-01.jpg",
        custombar: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Image.asset(
                "assets/button/btn-03.png",
                height: Get.height * .1,
                width: Get.height * .1,
              ),
            ),
            GestureDetector(
              child: Image.asset(
                "assets/button/btn-05.png",
                height: Get.height * .1,
                width: Get.height * .1,
              ),
            ),
          ],
        ),
        kPaddingTop: context.mediaQueryPadding.top,
        content: Container(
          // color: Colors.grey[700],
          height: context.isTablet ? Get.height * .8 : Get.height * .75,
          width: context.isTablet ? Get.width * .78 : Get.width * .75,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                top: context.isTablet ? Get.height * .05 : 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/title.png",
                  height: Get.height * .17,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Get.to(SettingScreen(), transition: Transition.zoom),
                      child: Image.asset(
                        "assets/button/btn-08.png",
                        height: Get.height * .1,
                        width: Get.height * .1,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => Get.toNamed("/MATERI"),
                      child: Image.asset(
                        "assets/button/btn-01.png",
                        height: Get.height * .15,
                        width: Get.height * .15,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => Get.to(QuizScreen()),
                      child: Image.asset(
                        "assets/button/btn-12.png",
                        height: Get.height * .1,
                        width: Get.height * .1,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
