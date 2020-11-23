import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';

class WidgetAnswer extends StatelessWidget {
  const WidgetAnswer({
    Key key,
    @required this.quiz,
    @required this.jawabanBenar,
    @required this.answer,
  }) : super(key: key);

  final Map<String, dynamic> quiz;
  final String jawabanBenar;
  final String answer;

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    return Expanded(
      child: GetBuilder(
        builder: (ctr) {
          String jawabannya = jawabanBenar;
          var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/kuis/btn-24.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/button/btn-05.png",
                      height: 16,
                      width: 16,
                    );
          return GestureDetector(
            onTap: () => controller.klikjawab(answer, jawabanBenar),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  answer,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                GetX<QuizController>(
                  builder: (controller) {
                    if (controller.onclickj.value) {
                      return icon;
                    } else {
                      return Container(
                        height: 1,
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
