import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

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
                custombar: WidgetAppbarCloseMusic(),
              );
            }),
      ),
    );
  }
}

class WidgetQuizSub1Soal1 extends StatelessWidget {
  const WidgetQuizSub1Soal1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();

    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pernyataan tepat mengenai konsep perubahan sosial ditunjukkan oleh pilihan….",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "a.Perubahan sosial tidak dipengaruhi oleh kebudayaan dari masyarakat lain",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              padding: EdgeInsets.only(top: 0),
              itemBuilder: (context, index) {
                String answer = controller.data[index]["jawaban"][index];
                String jawabannya = controller.data[index]["jawabanbenar"];
                var icon = jawabannya == answer
                    ? Image.asset(
                        "assets/Icon/btn-check-05.png",
                        height: 16,
                        width: 16,
                      )
                    : Icon(
                        Icons.close,
                        size: 16,
                        color: Colors.red,
                      );
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: () => controller.klikjawab(answer, jawabannya),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          answer,
                          style: TextStyle(
                            // fontSize: 13,
                            wordSpacing: 4,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GetX<QuizController>(
                          builder: (controller) {
                            if (controller.onclickj.value) {
                              return icon;
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
