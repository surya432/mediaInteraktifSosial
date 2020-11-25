import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAnswer.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class WidgetSubQuiz2 extends StatelessWidget {
  const WidgetSubQuiz2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
          init: QuizController(),
          initState: (state) => Get.find<QuizController>().initSubSoal2(),
          builder: (QuizController controller) {
            if (controller.numberQuiz.value >= controller.data.length) {
              // String total = _.getTotalBenar.toString();

              return BGContainerWidget(
                kPaddingTop: context.mediaQueryPadding.top,
                content: BoardTitleWidget(
                  widgetContent: Container(),
                  widgetTitle: controller.data[0]['images'],
                ),
                custombar: WidgetAppbarCloseMusic(),
              );
            } else {
              return BGContainerWidget(
                kPaddingTop: context.mediaQueryPadding.top,
                content: BoardTitleWidget(
                  widgetContent: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Align(
                      child: controller.data[controller.numberQuiz.toInt()]
                          ['route'],
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  widgetTitle: controller.data[controller.numberQuiz.toInt()]
                      ['images'],
                ),
                custombar: WidgetAppbarCloseMusic(),
              );
            }
          },
        ),
      ),
    );
  }
}

class WidgetSubSoal2Quiz1 extends StatelessWidget {
  const WidgetSubSoal2Quiz1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Revolusi";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan pernyataan berikut!
1) Proses perubahan membutuhkan waktu cukup lama
2) Terdapat tujuan yang ingin dicapai dalam perubahan
3) Terdapat keinginan masyarakat melakukan perubahan
4) Terdapat momentum yang tepat untuk memulai gerakan perubahan 
Bentuk perubahan sosial berdasarkan ciri ciri tersebut adalah perubahan…. """,
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. Tidak direncanakan",
        "b. Direncanakan",
        "c. Revolusi",
        "d. Evolusi",
        "e. Kecil"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSubSoal2Quiz2 extends StatelessWidget {
  const WidgetSubSoal2Quiz2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Gaya hijab wanita muslim selalu mengalami perubahan.";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Pernyataan berikut yang menunjukkan contoh perubahan kecil yaitu….",
      "jawaban": [
        "a. Kemajuan ilmu pengetahuan berpengaruh terhadap perkembangan peradaban manusia",
        "b. Krisis ekonomi menyebabkan pemutusan hubungan kerja secara besar besaran",
        "c. Peperangan antarnegara menyebabkan terjadinya perubahan struktur sosial",
        "d. Bencana banjir menyebabkan perubahan kehidupan masyarakat Sentari",
        "e. Gaya hijab wanita muslim selalu mengalami perubahan.",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
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
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 4),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
    );
  }
}

class WidgetSubSoal2Quiz3 extends StatelessWidget {
  const WidgetSubSoal2Quiz3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. Tidak direncanakan";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan fenomena berikut!""",
      "jawabanbenar": "b. Tidak direncanakan",
      "jawaban": [
        "a. Yang direncanakan",
        "b. Tidak direncanakan",
        "c. Regres",
        "d. Proses",
        "e. Progres"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Column(
                    children: [
                      Text(
                        quiz['pertanyaan'],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/subquiz2-1.png",
                            height: Get.height * .5, width: Get.width * .5),
                      ),
                      Text(
                        "berdasarkan prosesnya, fenomena pada gambar dapat dikategorikan dalam bentuk perubahan",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSubSoal2Quiz4 extends StatelessWidget {
  const WidgetSubSoal2Quiz4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "d. Y1), X2), dan X3)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan fenomena berikut!""",
      "jawabanbenar": "d. Y1), X2), dan X3)",
      "jawaban": [
        "a. X1), X2), dan Y3)",
        "b. X1), Y2), dan Y3)",
        "c. Y1), Y2), dan X3)",
        "d. Y1), X2), dan X3)",
        "e. X2), Y2), dan Y3)"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          quiz['pertanyaan'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Table(
                        border: TableBorder.all(),
                        textBaseline: TextBaseline.alphabetic,
                        columnWidths: {
                          0: FractionColumnWidth(.1),
                          1: FractionColumnWidth(.45),
                          2: FractionColumnWidth(.45)
                        },
                        children: [
                          TableRow(children: [
                            Container(),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('X'.toUpperCase(),
                                  style: TextStyle(
                                      //fontSize: 16,
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('Y'.toUpperCase(),
                                  style: TextStyle(
                                      //fontSize: 16,
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Menyempurnakan perubahan yang sudah ada.",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Berakibat besar pada berbagai bidang kehidupan.",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("2",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Menyebabkan perubahan system dan aspek-aspek dalam masyarakat.",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Berdampak pada bidang tertentu-tertentu saja.",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("3",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Perubahan tidak bersifat mendasar.",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Perubahan bersifat mendasar  dalam kehidupan masyarakat",
                                  style: TextStyle(
                                      fontFamily: "Gothic",
                                      color: Colors.white)),
                            ),
                          ]),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Ciri-ciri yang menunjukkan perubahan structural ditunjukkan oleh kombinasi….",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSubSoal2Quiz5 extends StatelessWidget {
  const WidgetSubSoal2Quiz5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. Terencana";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Meningkatkan sumber daya manusia dengan member kesempatan memperoleh pendidikan, tugas belajar, peningkatan biaya atau anggaran pendidikan, peningkatan standar mutu pendidikan dan peningkatan daya saing bangsa secara internal dan global adalah contoh perubahan ...",
      "jawaban": [
        "a. Progresif",
        "b. Manifest",
        "c. Laten",
        "d. Disengaja",
        "e. Terencana"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
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
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 4),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
    );
  }
}

class WidgetSubSoal2Quiz6 extends StatelessWidget {
  const WidgetSubSoal2Quiz6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. Revolusi sosial";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Suatu proses perubahan dalam masyarakat yang berlangsung cepat disebut ...",
      "jawaban": [
        "a. Rekayasa sosial",
        "b. Revolusi sosial",
        "c. Gerakan sosial",
        "d. Perencanaan sosial",
        "e. Gebrakan sosial"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
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
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 4),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
    );
  }
}

class WidgetSubSoal2Quiz7 extends StatelessWidget {
  const WidgetSubSoal2Quiz7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. Cukup lama";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Masyarakat dikatakan mengalami perubahan apabila terjadi ketidaksamaan antara keadaan dimasa lampau dengan masa sekarang dalam waktu yang ...",
      "jawaban": [
        "a. Relative cepat",
        "b. Sangat cepat",
        "c. Gerakan sosial",
        "d. Secara bertahap",
        "e. Cukup lama"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
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
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 4),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
    );
  }
}

class WidgetSubSoal2Quiz8 extends StatelessWidget {
  const WidgetSubSoal2Quiz8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. 3), 4), dan 5)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan pernyataan berikut!
1) System pertukaran pelajar antarnegara dapat memajukan pendidikan Indonesia
2) Pembangunan jalan tol tidak berjalan sesuai target waktu yang ditentukan
3) Kemiskinan dikota besar meningkat karena naiknya harga bahan pokok
4) Pencemaran lingkungan teerjadi karena pembuangan limbah pabrik kesungai
5) Kebakaran hutan terjadi akibat ketidakpedulian manusia terhadap lingkungan.
Perubahan sosial tidak direncanakan ditunjukkan oleh angka…""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1), 2), dan 3)",
        "b. 1), 2), dan 4)",
        "c. 1), 3), dan 5)",
        "d. 2), 4), dan 5)",
        "e. 3), 4), dan 5)"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSubSoal2Quiz9 extends StatelessWidget {
  const WidgetSubSoal2Quiz9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Menyebabkan perubahan sistem nasional";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Setiap lima tahun sekali, Indonesia memilih pemimpin negara melalui pemilu. Pergantian pemimpin setelah pelaksanaan pemilu dapat memengaruhi penyelenggaraan pemerintahan. Dengan demikian, pelaksanaan pemilu dapat menjadi salah satu faktor penyebab perubahan structural karena…",
      "jawaban": [
        "a. Memengaruhi bidang kehidupan manusia yang paling kecil",
        "b. Mengakibatkan perubahan terjadi secara lambat dan bertahap sesuai arahnya",
        "c. Menyebabkan perubahan sistem nasional",
        "d. Memengaruhi kemajuan suatu negara",
        "e. Terjadi dalam momentum yang tepat."
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
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
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 4),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
    );
  }
}

class WidgetSubSoal2Quiz10 extends StatelessWidget {
  const WidgetSubSoal2Quiz10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "d. 2 dan 4";
    Map<String, dynamic> quiz = {
      "pertanyaan": """10. Beberapa contoh fenomena sosial sebagai berikut!.
1) Pembangunan listrik masuk desa mendorong industri kecil
2) PHK menyebabkan pengangguran meningkat dengan pesat
3) Pembangunan jalan raya didaerah terpencil sesuai dengan anggaran
4) Penggunaan mesin pertanian memicu berkembangnya sikap individualis
Dari contoh tersebut yang termasuk perubahan yang tidak dikehendaki adalah ...""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1 dan 2",
        "b. 1 dan 3",
        "c. 2 dan 3",
        "d. 2 dan 4",
        "e. 3 dan 4"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
