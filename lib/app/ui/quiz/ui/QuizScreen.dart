import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/kuis/headtitle-17.png",
          widgetContent: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () => Get.toNamed("/QuizSub1"),
                        child: Image.asset("assets/kuis/headtitle-61.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () => Get.toNamed("/QuizSub2"),
                        child: Image.asset("assets/kuis/headtitle-62.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                    ],
                  ),
                  SizedBox(height: context.height * .1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () => Get.toNamed("/QuizSub3"),
                        child: Image.asset("assets/kuis/headtitle-63.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () => Get.toNamed("/QuizSub4"),
                        child: Image.asset("assets/kuis/headtitle-64.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        custombar: WidgetAppbarCloseMusic(),
      ),
    );
  }
}
