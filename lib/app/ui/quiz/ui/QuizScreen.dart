import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

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
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/DAMPAKNEGATIFPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                    ],
                  ),
                  SizedBox(height: context.height * .1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/DAMPAKPOSITIFPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/DAMPAKNEGATIFPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        custombar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {},
              child: Image.asset("assets/button/btn-03.png",
                  height: Get.height * .1, width: Get.height * .1),
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset("assets/button/btn-05.png",
                  height: Get.height * .1, width: Get.height * .1),
            ),
          ],
        ),
      ),
    );
  }
}
