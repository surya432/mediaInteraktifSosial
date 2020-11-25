import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAnswer.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class WidgetSubQuiz3 extends StatelessWidget {
  const WidgetSubQuiz3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
          init: QuizController(),
          initState: (state) => Get.find<QuizController>().initSubSoal3(),
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

class WidgetSubSoal3Quiz1 extends StatelessWidget {
  const WidgetSubSoal3Quiz1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Y1), Y2), dan X3)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan Table berikut.""",
      "jawabanbenar": "c. Y1), Y2), dan X3)",
      "jawaban": [
        "a. X1), X2), dan Y3)",
        "b. X2), Y2), dan Y3)",
        "c. Y1), Y2), dan X3)",
        "d. Y1), X1), dan X3)",
        "e. Y2), X2), dan X3)"
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
                            Container(width: 16),
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
                                  "Terjadi culture lag dan culture shock.",
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
                          "Dampak positif perubahan sosial ditunjukkan oleh kombinasi…",
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

class WidgetSubSoal3Quiz2 extends StatelessWidget {
  const WidgetSubSoal3Quiz2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Modernisasi";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan gambar berikut.""",
      "jawabanbenar": "b. Tidak direncanakan",
      "jawaban": [
        "a. Disorganisasi",
        "b. Marginnalisasi",
        "c. Modernisasi",
        "d. Intergrasi",
        "e. Anomi"
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: Image.asset("assets/images/subquiz3-1.png",
                            height: Get.height * .5, width: Get.width * .5),
                      ),
                      Text(
                        "Gambar diatas menunjukkan dampak positif perubahan sosial dalam masyarakat berbentuk",
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

class WidgetSubSoal3Quiz3 extends StatelessWidget {
  const WidgetSubSoal3Quiz3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. Berfikir rasional dan mendukung kemajuan IPTEK";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Contoh berikut yang menunjukkan pengertian modernisasi adalah ....",
      "jawaban": [
        "a. Hidup seperti orang barat sebagaimana adanya",
        "b. Berfikir rasional dan mendukung kemajuan IPTEK",
        "c. Kesenangan atau kenikmatan menjadi tujuan hidup",
        "d. Hidup semata — mata untuk kepentingan dunia",
        "e. Memakai atau mengkonsumsi barang barang secara berlebihan"
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

class WidgetSubSoal3Quiz4 extends StatelessWidget {
  const WidgetSubSoal3Quiz4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. 1), 2), dan 4)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan pernyataan berikut ini !
1) Cara berfikir ilmiah
2) Sistem administrasi negara yang baik
3) Kedisiplinan yang tinggi
4) Sistem stratifikasi sosial terbuka
5) Berorientasi ke masa depan
Dari pernyataan tersebut diatas yang termasuk syarat - syarat modernisasi adalah...""",
      "jawabanbenar": "b. 1), 2), dan 4)",
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

class WidgetSubSoal3Quiz5 extends StatelessWidget {
  const WidgetSubSoal3Quiz5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. sistem adat";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berikut adalah unsur budaya yang paling rentan terhadap pengaruh asing, kecuali …",
      "jawaban": [
        "a. Ilmu pengetahuan",
        "b. sistem adat",
        "c. perangkat teknologi dan komunikasi",
        "d. mata pencaharian",
        "e. musik dan hiburan"
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

class WidgetSubSoal3Quiz6 extends StatelessWidget {
  const WidgetSubSoal3Quiz6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. pola hidup hemat";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berikut adalah dampak negatif perubahan sosial budaya, kecuali ....",
      "jawaban": [
        "a. pola hidup hemat",
        "b. individualism",
        "c. kesenjangan sosial",
        "d. gaya hidup kebarat-baratan",
        "e. westernisasi"
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

class WidgetSubSoal3Quiz7 extends StatelessWidget {
  const WidgetSubSoal3Quiz7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. Menciptakan lapangan kerja";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berkembangnya perusahaan multinasional di berbagai wilayah Indonesia merupakan salah satu bentuk perubahan sosial akibat globalisasi. Perkembangan perusahaan multinasional tersebut tidak serta merta merugikan pelaku ekonomi dalam negeri. Akan tetapi, perkembangan perusahaan tersebut dapat berdampak positif bagi peningkatan taraf hidup masyarakat yaitu…. ",
      "jawaban": [
        "a. Menciptakan kawasan kumuh di perkotaan",
        "b. Menyebabkan kesenjangan pendapatan",
        "c. Mengembangkan sifat induvidualis",
        "d. Meningkatkan rutinitas aktivitas",
        "e. Menciptakan lapangan kerja",
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

class WidgetSubSoal3Quiz8 extends StatelessWidget {
  const WidgetSubSoal3Quiz8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. Tercipta integrasi sosial";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Proses perubahan sosial dapat dilakukakn melalui asimilasi dan akulturasi. Dampak positif akulturasi dan asimilasi dalam perubahan sosial adalah…",
      "jawaban": [
        "a. Tercipta integrasi sosial",
        "b. Terjadi kemunduran iptek",
        "c. Terjadi disintegrasi sosial",
        "d. Terjadi transformasi politik",
        "e. Terjadi disorganisasi sosial"
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

class WidgetSubSoal3Quiz9 extends StatelessWidget {
  const WidgetSubSoal3Quiz9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Peningkatan urbanisasi menyebabkan permukiman kumuh didaerah perkotaan semakin meningkat.";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Perubahan sosial dapat berdampak positif dan negative. Dampak negative perubahan sosial dalam masyarakat tampak pada pernyataan…",
      "jawaban": [
        "a. Penerapan sistem plat ganjil genap bagi pengendara kendaraan bermotor bertujuan menanggulangi kemacetan",
        "b. Perbaikan ruas jalan mencegah peningkatan jumlah kecelakaan ketuk arus mudik dan arus balik lebaran",
        "c. Pemerintah mencangkan program transmigrasi untuk mengurangi kepadatan penduduk suatu daerah",
        "d. Pendirian kampong cyber mendukung masyarakat melek teknologi, khususnya pengguna internet",
        "e. Peningkatan urbanisasi menyebabkan permukiman kumuh didaerah perkotaan semakin meningkat."
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

class WidgetSubSoal3Quiz10 extends StatelessWidget {
  const WidgetSubSoal3Quiz10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Urbanisasi menyebabkan peningkatan jumlah pengangguran dikota";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Dampak perubahan sosial yang menyebabkan peningkatan tindak kriminalitas dikota di tunjukkan oleh fenomena….",
      "jawaban": [
        "a. Masyarakat kesulitan mengakses pendidikan",
        "b. Biaya hidup dikota lebih murah daripada di desa",
        "c. Persaingan dalam memperoleh pekerjaan sangat tinggi",
        "d. Kegagalan pemerintah dalam menciptakan lapangan kerja",
        "e. Urbanisasi menyebabkan peningkatan jumlah pengangguran dikota"
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
