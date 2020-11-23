import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAnswer.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class WidgetSub1Quiz1 extends StatelessWidget {
  const WidgetSub1Quiz1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
          init: QuizController(),
          initState: (state) => Get.find<QuizController>().initSubSoal1(),
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

class WidgetSubSoal1Quiz1 extends StatelessWidget {
  const WidgetSubSoal1Quiz1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "c. Perubahan sosial merupakan perubahan perilaku dan budaya yang signifikan dari waktu ke waktu";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Pernyataan tepat mengenai konsep perubahan sosial ditunjukkan oleh pilihan….",
      "jawaban": [
        "a. Perubahan sosial tidak dipengaruhi oleh kebudayaan dari masyarakat lain",
        "b. Perubahan sosial hanya dapat dilihat dari pertambahan jumlah penduduk suatu daerah",
        "c. Perubahan sosial merupakan perubahan perilaku dan budaya yang signifikan dari waktu ke waktu",
        "d. Perubahan sosial terjadi dalam masyarakat tradisional dan perubahan akan berhenti ketika masyarakat sudah modern",
        "e. Perubahan sosial ditandai dengan perubahan lingkungan fisik yang dapat dilihat perbedaannya beberapa tahun kemudian"
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
                      // fontSize: 14,
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
                            // fontSize: 14,
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

class WidgetSubSoal1Quiz2 extends StatelessWidget {
  const WidgetSubSoal1Quiz2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "a. Suku Minang memberi bantuan kepada Suku Padang yang sedang mengalami musibah";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Untuk mencapai proses asimilisi diperlukan sikap toleransi dan simpati dari kedua kelompok masyarakat yang berbeda. Contoh sikap yang mendukung proses asimilasi dalam mewujudkan perubahan sosial adalah….",
      "jawaban": [
        "a. Suku Minang memberi bantuan kepada Suku Padang yang sedang mengalami musibah",
        "b. Desa Rejo menyerang Desa Turi demi mempertahankan solidaritas kelompok.",
        "c. Yuliana tidak melanjutkan pendidikan karena keterbatasan ekonomi",
        "d. Budi jarang berinteraksi dengan ucok yang berasal dari daerah lain",
        "e. Doni bersikeras ingin memperoleh pekerjaan didaerah asalnya"
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

class WidgetSubSoal1Quiz3 extends StatelessWidget {
  const WidgetSubSoal1Quiz3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. Banyak remaja di Indonesia yang bentuk komunitas cosplay karena mengemari game dan anime dari jepang";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Contoh perubahan sosial yang disebabkan oleh masuknya kebudayaan masyarakat lain ditunjukkan oleh pilihan….",
      "jawaban": [
        "a. Warga dusun Sukaramai melakukan pemilihan kepala desa baru periode 2020-2025",
        "b. Peternak di Lembang mengembangkan biogas sebagai pengganti gas elpiji sehingga menghemat pengeluaran untuk membeli gas",
        "c. Aktivitas masyarakat di Jakarta lumpuh akibat cuaca ekstrem dan banjir bandang",
        "d. Banyak remaja di Indonesia yang bentuk komunitas cosplay karena mengemari game dan anime dari jepang",
        "e. Pertentangan antarsuku menyebabkan kekacauan sehingga warga perlu dievakuasi demi keamanan"
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
                padding: const EdgeInsets.only(left: 20, bottom: 2),
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

class WidgetSubSoal1Quiz4 extends StatelessWidget {
  const WidgetSubSoal1Quiz4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. 3),4), dan 5)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan beberapa peryataan berikut!
1) Penemuan situs purbakala mengemparkan seluruh warga
2) Pembangunan jembatan laying tidak berjalan sesuai dengan rencana
3) Inflansi menyebabkan pemutusan hubungan kerja secara bersama sama 
4) Bencana alam menyebabkan perubahan structural masyarakat
5) Lembaga pelatihan kerja berperan mengurangi jumlah pengganguran dalam masyarakat 
Contoh perubahan sosial dalam masyarakat ditunjukkan oleh angka….""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1),2), dan 3)",
        "b. 1),2), dan 4)",
        "c. 1),3), dan 5)",
        "d. 2),4), dan 5)",
        "e. 3),4), dan 5)"
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

class WidgetSubSoal1Quiz5 extends StatelessWidget {
  const WidgetSubSoal1Quiz5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. 3),4), dan 5)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan gambar berikut!""",
      "jawabanbenar": "d. Difusi",
      "jawaban": [
        "a. Akomodasi",
        "b. Asimilasi",
        "c. Akulturasi",
        "d. Difusi",
        "e. Sosialisasi"
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
                        child: Image.asset("assets/images/subQuiz1Image1.png",
                            height: Get.height * .5, width: Get.width * .5),
                      ),
                      Text(
                        "Penemuan baru yang menyebar ke segala arah. Contoh: Penemuan pesawat radio dapat menyebabkan perubahan-perubahan di bidang lain seperti pendidikan, pemerintahan, pertanian, perekonomian dan jasa. Gambar tersebut di atas dipengaruhi proses …. ",
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

class WidgetSubSoal1Quiz6 extends StatelessWidget {
  const WidgetSubSoal1Quiz6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. 3),4), dan 5)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan beberapa peryataan berikut!
1) Penemuan situs purbakala mengemparkan seluruh warga
2) Pembangunan jembatan laying tidak berjalan sesuai dengan rencana
3) Inflansi menyebabkan pemutusan hubungan kerja secara bersama sama 
4) Bencana alam menyebabkan perubahan structural masyarakat
5) Lembaga pelatihan kerja berperan mengurangi jumlah pengganguran dalam masyarakat 
Contoh perubahan sosial dalam masyarakat ditunjukkan oleh angka….""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1),2), dan 3)",
        "b. 1),2), dan 4)",
        "c. 1),3), dan 5)",
        "d. 2),4), dan 5)",
        "e. 3),4), dan 5)"
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

class WidgetSubSoal1Quiz7 extends StatelessWidget {
  const WidgetSubSoal1Quiz7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. 1, 2, dan 3";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          """Faktor – faktor penyebab perubahan sosial masyarakat sebagai berikut!.
1) Masyarakat mengungsi akibat banjir
2) Masuknya pengarup kebudayaan lain melalui media massa
3) Perang antar negara yang memperebutkan wilayah perbatasan
4) Perselisihan antar pendukung partai politik dalam pemilihan kepala daerah.
5) Meningkatnya jumlah penduduk Indonesia terutama di pulau jawa
Faktor perubahan sosial yang bersifat eksternal adalah ....""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1, 2, dan 3",
        "b. 1, 2, dan 4",
        "c. 1, 3, dan 5",
        "d. 2, 4, dan 5",
        "e. 3, 4, dan 5"
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

class WidgetSubSoal1Quiz8 extends StatelessWidget {
  const WidgetSubSoal1Quiz8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. Masalah-masalah sosial";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          """Adanya krisis bahan bakar minyak mendorong masyarakat untuk melakukan terobosan-terobosan baru dengan mengupayakan bahan bakar minyak diganti dengan Bio gas (kotoran-kotoran ternak) yang digunakan sebagai bahan bakar memasak. Faktor penyebab perubahan pada wacana tersebut dipengaruhi oleh …""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. Masalah-masalah sosial",
        "b. Konflik sosial",
        "c. Tuntutan ekonomi",
        "d. Alih teknologi",
        "e. Penemuan baru"
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

class WidgetSubSoal1Quiz9 extends StatelessWidget {
  const WidgetSubSoal1Quiz9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "d. 2, 4, dan 5";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan pernyataan berikut ini!.
1) Fanatik berlebihan pada ideologinya
2) Kemiskinan struktural pada masyarakat
3) Pengadaan mobil perpustakaan keliling
4) Penyediaan beasiswa pendidikan keluar negeri
5) Mendirikan sekolah non formai berupa rumah singgah
Dari pernyataan tersebut diatas yang termasuk faktor pendorong perubahan sosial adalah""",
      "jawabanbenar": "a. Masalah-masalah sosial",
      "jawaban": [
        "a. 1, 2, dan 3",
        "b. 1. 2. dan 4",
        "c. 1, 3, dan 5",
        "d. 2, 4, dan 5",
        "e. 3, 4, dan 5"
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

class WidgetSubSoal1Quiz10 extends StatelessWidget {
  const WidgetSubSoal1Quiz10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. Perubahan dianggap sebagai penyimpangan terhadap nilai dan norma sosial";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Pada zaman modern masih terdapat masyarakat yang bersikap kolot dan menentang modernitas. Kehidupan masyarakat menjadi sulit berkembang. Akibatnya, perubahan sosial sulit terjadi dalam masyarakat, kondisi tersebut disebabkan….",
      "jawaban": [
        "a. Hubungan sosial dengan masyarakat lain bersifat tertutup",
        "b. Masyarakat memiliki toleransi tinggi terhadap perilaku menyimpang",
        "c. Masyarakat selalu tidak puas terhadap bidang-bidang kehidupannya",
        "d. Perubahan dianggap sebagai penyimpangan terhadap nilai dan norma sosial",
        "e. Adat istiadat masyarakat berkembang dengan baik dan mengikat anggotanya."
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
