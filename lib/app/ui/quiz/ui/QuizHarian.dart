import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/controller/QuizController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAnswer.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class WidgetQuizHarianScreen extends StatelessWidget {
  const WidgetQuizHarianScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
          init: QuizController(),
          initState: (state) => Get.find<QuizController>().initSubSoalHarian(),
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

class WidgetQuizHarian1 extends StatelessWidget {
  const WidgetQuizHarian1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Merupakan pembaruan dari kondisi yang sudah ada karena berbagai faktor penyebab";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Perubahan sosial merupakan modifikasi-modifikasi yang terjadi dalam pola-pola kehidupan manusia baik karena faktor dari dalam maupun dari luar. Makna yang terkandung dari pernyataan tersebut bahwa perubahan sosial…",
      "jawaban": [
        "a. Berlangsung pada masyarakat yang mengalami konflik",
        "b. Memengaruhi kelompok masyarakat diluar wilayah",
        "c. Hanya dapat terjadi pada kelompok sosial masyarakat tertentu",
        "d. Terjadi karena ada gesekan faktor eksternal dan internal secara bersamaan",
        "e. Merupakan pembaruan dari kondisi yang sudah ada karena berbagai faktor penyebab"
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

class WidgetQuizHarian2 extends StatelessWidget {
  const WidgetQuizHarian2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "a. Pemanfaatan lahan pertanian sebagai permukiman dapat mengubah mata pencaharian warga";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Contoh perubahan sosial yang disebabkan oleh masuknya kebudayaan masyarakat lain adalah…",
      "jawaban": [
        "a. Pemanfaatan lahan pertanian sebagai permukiman dapat mengubah mata pencaharian warga",
        "b. Perhatian presiden dan wakil presiden setelah masa jabatan lima tahun",
        "c. Masyarakat jeneponto tidak dapat melakukan aktivitas akibat dilanda banjir bandang",
        "d. Remaja diberbagai negara membentuk komunitas cosplay melalui jejaring sosial",
        "e. Persatuan dan kesatuan bangsa terancam karena pertentangan antarsuku."
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

class WidgetQuizHarian3 extends StatelessWidget {
  const WidgetQuizHarian3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. Dahulu masyarakat berkomunikasi jarak jauh dengan mengirim surat, saat ini dapat menggunakan telepon seluler setiap waktu";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Perhatikan gambar berikut !",
      "jawaban": [
        "a. Kegiatan pembelajaran tidak hanya dilakukan secara tatap muka, tetapi dapat dilakukan dengan teleconference",
        "b. Saat ini celana panjang perempuan model kulot kembali disukai masyarakat",
        "c. Demonstrasi mesyarakat Indonesia pada 1998 berhasil membuka jalan reformasi di Indonesia",
        "d. Dahulu masyarakat berkomunikasi jarak jauh dengan mengirim surat, saat ini dapat menggunakan telepon seluler setiap waktu",
        "e. Pemerintah mengambil kebijakan menerapkan pendidikan mulrtikultural untuk meminimalkan konflik horizontal"
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
                        child: Image.asset("assets/images/teoripenghambat2.png",
                            height: Get.height * .5, width: Get.width * .5),
                      ),
                      Text(
                        "Contoh perubahan sosial yang tepat dijelaskan menggunakan teori seperti gambar adalah…",
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

class WidgetQuizHarian4 extends StatelessWidget {
  const WidgetQuizHarian4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Adat istiadat masyarakat berkembang dengan baik dan mengikat anggotanya";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Contoh perubahan sosial yang disebabkan oleh masuknya kebudayaan masyarakat lain adalah…",
      "jawaban": [
        "a. Hubungan sosial dengan masyarakat lain bersifat tertutup",
        "b. Masyarakat memiliki toleransi tinggi terhadap perilaku menyimpang",
        "c. Masyarakat selalu tidak puas terhadap bidang bidang kehidupannya",
        "d. Perubahan dianggap sebagai penyimpangan terhadap nilai dan normal sosial",
        "e. Adat istiadat masyarakat berkembang dengan baik dan mengikat anggotanya",
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

class WidgetQuizHarian5 extends StatelessWidget {
  const WidgetQuizHarian5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "d. Memengaruhi kemajuan suatu negara";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Setiap lima tahun sekali, Indonesia memilih pemimpin negara melalui pemilu. Pergantian pemimpin setelah pelaksanaan pemilu dapat memengaruhi penyelenggaraan pemerintahan. Dengan demikian, pelaksanaan pemilu dapat menjadi salah satu factor penyebab perubahan structural karena…",
      "jawaban": [
        "a. Memengaruhi bidang kehidupan manusia yang paling kecil",
        "b. Mengakibatkan perubahan terjadi secara lambat dan terhadap sesuai arahnya",
        "c. Menyebabkan perubahan system sosial",
        "d. Memengaruhi kemajuan suatu negara",
        "e. Terjadi dalam momentum yang tepat",
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

class WidgetQuizHarian6 extends StatelessWidget {
  const WidgetQuizHarian6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. banyaknya urbanisasi menyebabkan meningkatnya pengangguran karena kualitas sumber daya manusia rendah";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Pernyataan berikut yang dapat membawa perubahan negatif dalam kehidupan masyarakat adalah..",
      "jawaban": [
        "a. Pembangunan waduk pluit dijakarta bertujuan menanggulangi banjir",
        "b. Pemberdayaan perempuan dapat meningkatkan kesejahteraan masyarakat",
        "c. Wajib belajar dua belas tahun diharapkan dapat meningkatkan kualitas sumber daya manusia",
        "d. banyaknya urbanisasi menyebabkan meningkatnya pengangguran karena kualitas sumber daya manusia rendah",
        "e. Pemerintah merancang program transmigrasi untuk mengurangi kepadatan penduduk suatu daerah",
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

class WidgetQuizHarian7 extends StatelessWidget {
  const WidgetQuizHarian7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. 2), 3), dan 5)";
    Map<String, dynamic> quiz = {
      "pertanyaan": """Perhatikan sikap masyarakat pada pernyataan berikut!
1) Mempertahankan adat dan kebiasaan yang berlaku
2) Ikut berpartisipasi dengan mengikuti pasar bebas ASEAN
3) Merasa tidak puas terhadap bidang-bidang kehidupan tertentu
4) Mengedepankan sikap sopan dan ramah terhadap wisatawan asing
5) Mengalami ketakutan jika kebudayaan baru mengoyahkan keteraturan sosial
Sikap masyarakat yang mendorong terjadinya perubahan sosial terdapat pada angka…""",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1), 2), dan 3)",
        "b. 1), 2), dan 4)",
        "c. 2), 3), dan 5)",
        "d. 2), 4), dan 5)",
        "e. 3), 4), dan 5)",
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

class WidgetQuizHarian8 extends StatelessWidget {
  const WidgetQuizHarian8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. ketimpangan salah satu komponen budaya akibat perubahan teknologi";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Kemajuan teknologi dapat memberikan banyak manfaat jika diimbangi dengan moralitas yang tinggi. kenyataannya sebagian besar masyarakat tidak siap dengan perubahan budaya akibat kemajuan teknologi yang begitu pesat. akibatnya muncul cultural shock dalam masyarakat yang ditunjukkan oleh",
      "jawaban": [
        "a. kesenjangan budaya antara masyarakat desa dan kota.",
        "b. kebingungan bersikap dalam menerima / menolak perubahan",
        "c. guncangan jiwa karena tidak siap mengalami perubahan",
        "d. ketimpangan salah satu komponen budaya akibat perubahan teknologi",
        "e. penyesuaian budaya yang cenderung memudarkan eksistensi bangsa",
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

class WidgetQuizHarian9 extends StatelessWidget {
  const WidgetQuizHarian9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. Menguntungkan golongan atas";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berdasarkan sisi kemajuan dan kemunduran arahnya, perubahan sosial dibagi menjadi dua yaitu perubahan progress dan regres. Perubahan sosial dalam masyarakat bersifat progress apabila…",
      "jawaban": [
        "a. Menguntungkan golongan atas",
        "b. Menurunkan pendapatan nasional",
        "c. Meningkatkan permasalahan sosial",
        "d. Memberikan pengaruh berupa kemajuan",
        "e. Membawa dampak negatif bagi masyarakat",
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

class WidgetQuizHarian10 extends StatelessWidget {
  const WidgetQuizHarian10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. Meningkatkan akulturasi budaya";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Saat ini masyarakat mulai terbiasa berbelanja di toko online. Masyarakat menganggap berbelanja secara online lebih praktis dan efisien. Selain iyu, banyak marketplace berlomba lomba memberikan potongan harga untuk menarik minat konsumen. Meskipun demikian, wujud perubahan sosial tersebut dapat membawa dampak negatif bagi masyarakat yaitu…",
      "jawaban": [
        "a. Mendorong proses globalisasi",
        "b. Meningkatkan akulturasi budaya",
        "c. Menyebabkan perundungan didunia maya",
        "d. Mendorong masyarakat menjadi konsumtif",
        "e. Menciptakan nilai baru dalam masyarakat",
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

class WidgetQuizHarian11 extends StatelessWidget {
  const WidgetQuizHarian11({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. Perubahan mengarah pada titik tertentu dan bersifat bertahap";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Perhatikan gambar berikut !",
      "jawaban": [
        "a. Semakin besar perubahan sosial, semakin besar peningkatan kebutuhan hidup manusia",
        "b. Perubahan yang berasal dari rentetan perubahan besar yang terjadi singkat",
        "c. Perubahan yang dialami manusia mengarah pada kemajuan dan kemunduran",
        "d. Perubahan mengarah pada titik tertentu dan bersifat bertahap",
        "e. Proses perubahan sosial berkembang dan bergerak menuju modernitas",
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
                        child: Image.asset("assets/images/arahPerubahan.png",
                            height: Get.height * .5, width: Get.width * .5),
                      ),
                      Text(
                        "Gambar pola diatas menunjukkan teori perubahan sosial yang menyatakan bahwa….",
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

class WidgetQuizHarian12 extends StatelessWidget {
  const WidgetQuizHarian12({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a. Toleransi terhadap perilaku yang menyimpang";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Dalam melakukan sosialisasi kesehatan harus adanya sikap toleransi, tenaga medis kesulitan mengajak masyarakat tradisional untuk mengikuti prosedur medis yang tepat dalam mengobati suatu penyakit. Masyarakat cenderung lebih memercayai pengobatan tradisional yang dilakukan dukun. Faktor pendorong proses perubahan sosial masyarakat tradisional berdasarkan deskripsi tersebut adalah…",
      "jawaban": [
        "a. Toleransi terhadap perilaku yang menyimpang",
        "b. Perbedaan ideologi",
        "c. Sikap menghargai karya orang lain",
        "d. Prasangka terhadap kebudayaan baru",
        "e. Adat dan istiadat yang sulit diubah",
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

class WidgetQuizHarian13 extends StatelessWidget {
  const WidgetQuizHarian13({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "e. Tren music K-pop banyak digemari oleh generasi muda Indonesia.";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Contoh bentuk perubahan kecil ditunjukkan oleh pilihan…",
      "jawaban": [
        "a. Internet tidak hanya digunakan untuk mencari informasi tetapi juga digunakan melakukan pelayanan umum.",
        "b. Wabah Covid-19 berdampak diberbagai sector seperti kesehatan, ekonomi, pariwisata, dan perdagangan",
        "c. Krisis ekonomi menyebabkan pemutusan hubungan kerja secara besar-besaran",
        "d. Peperangan antarnegara menyebabkan terjadinya perubahan struktur sosial",
        "e. Tren music K-pop banyak digemari oleh generasi muda Indonesia.",
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

class WidgetQuizHarian14 extends StatelessWidget {
  const WidgetQuizHarian14({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Modernisasi";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berbagai penemuan baru dalam bidang teknologi memudahkan manusia dalam menjalankan aktivitasnya. Kondisi tersebut menunjukkan perubahan sosial mendorong terjadinya",
      "jawaban": [
        "a. Traansformasi politik",
        "b. Disorganisasi",
        "c. Modernisasi",
        "d. Reorganisasi",
        "e. Intergrasi",
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

class WidgetQuizHarian15 extends StatelessWidget {
  const WidgetQuizHarian15({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. Marginalisasi";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Keterbukaan masyarakat terhadap pengaruh budaya kelompok lain mendorong terjadinya akulturasi budaya. Selain itu, sikap tersebut mendorong pembauran antarkelompok sehingga menciptakan masyarakat heterogen. Realitas tersebut menunjukkan dampak perubahan sosial yaitu…",
      "jawaban": [
        "a. Transformasi politik",
        "b. Marginalisasi",
        "c. Modernisasi",
        "d. Intergrasi",
        "e. Anomi",
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
