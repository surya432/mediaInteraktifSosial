import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class QuizSub1Screen extends StatelessWidget {
  const QuizSub1Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
            init: QuizController(),
            initState: (state) => Get.find<QuizController>().initSubSoal1(),
            builder: (QuizController controller) {
              return BGContainerWidget(
                kPaddingTop: context.mediaQueryPadding.top,
                content: BoardTitleWidget(
                  widgetContent: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: controller.data[controller.numberQuiz.toInt()]
                              ['route'],
                        ),
                      ],
                    ),
                  ),
                  widgetTitle: controller.data[controller.numberQuiz.toInt()]
                      ['images'],
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
              );
            }),
      ),
    );
  }
}
