import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class FaktorPendorongPerubahanSosialScreen extends StatelessWidget {
  const FaktorPendorongPerubahanSosialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: GetX<PerubahanSosialController>(
          init: PerubahanSosialController(),
          initState: (state) => Get.find<PerubahanSosialController>()
              .initFaktorPendorongPerubahanSosial(),
          builder: (PerubahanSosialController controller) {
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
                      GetX(
                        builder: (PerubahanSosialController controller) {
                          return controller.pageIndex < 1
                              ? SizedBox(
                                  height: Get.height * .1,
                                  width: Get.height * .1)
                              : GestureDetector(
                                  onTap: () => controller.decrement(),
                                  child: Image.asset(
                                      "assets/button/button-15.png",
                                      height: Get.height * .1,
                                      width: Get.height * .1),
                                );
                        },
                      ),
                      Expanded(
                        child: controller.menuList[controller.pageIndex.toInt()]
                            ['route'],
                      ),
                      GetX(
                        builder: (PerubahanSosialController controller) {
                          return controller.pageIndex <
                                  controller.menuList.length - 1
                              ? GestureDetector(
                                  onTap: () => controller.increment(),
                                  child: Image.asset(
                                      "assets/button/button-14.png",
                                      height: Get.height * .1,
                                      width: Get.height * .1),
                                )
                              : SizedBox(
                                  height: Get.height * .1,
                                  width: Get.height * .1);
                        },
                      ),
                    ],
                  ),
                ),
                widgetTitle: controller.menuList[controller.pageIndex.toInt()]
                    ['images'],
              ),
              custombar: WidgetAppbarCloseMusic(),
            );
          }),
    ));
  }
}

class WidgetFaktorPendorong1 extends StatelessWidget {
  const WidgetFaktorPendorong1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Sikap mudah menerima hal hal baru".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Sikap terbuka terhadap hal hal baru dapat mendorong perubahan sosial, dengan sikap terbuka, masyarakat belajar mengenai hal hal baru. Dalam perkembangannya, sikap seperti ini dapat mendorong perubahan sosial dalam masyarakat. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/faktorpendorong1.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: agenponsel.com",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "“Maraknya penggunaan tongsis, tren global dalam berfoto di media sosial”",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong2 extends StatelessWidget {
  const WidgetFaktorPendorong2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Orientasi masa depan".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Orientasi masa depan menunjukkan manusia memikirkan kehidupan mereka pada waktu yang akan datang. Orientasi pada masa depan mendorong individu memiliki sikap optimis dan selalu berfikir positif dalam menghadapi kehidupan. Sikap optimis mendorong individu untuk menjadi pribadi yang lebih baik, oleh karena itu, sikap optimis masyarakat selalu menunjukkan keinginan untuk maju. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong3 extends StatelessWidget {
  const WidgetFaktorPendorong3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Kontak dengan kebudayaan lain.".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Pemberian penghargaan atau apresiasi dapat mendorong terciptanya penemuan baru atau melakukan suatu gerakan sosial yang dapat menciptakan perubahan sosial. Menghargai karya orang lain dapat menyebabkan terjadinya perubahan sosial yang mampu membawah masyarakat pada taraf kehidupan yang lebih baik. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong4 extends StatelessWidget {
  const WidgetFaktorPendorong4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Sikap menghargai karya orang lain dan keinginan untuk maju."
                    .toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Kontak dengan kebudayaan lain menunjukkan terjadinya hubungan sosial antar masyarakat. Hubungan sosial dengan masyarakat lain dapat menyebarkan unsur kebudayaan dan memberikan peluang bagi kebudayaan lain masuk dalam kehidupan masyarakat. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/faktor-pendorong2.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
            Align(
              child: Text(
                "Sumber:  infopublik.id",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
            ),
            Text(
              "“Pemberian piagam, Piala dan Hadiah pada pemenang lomba”",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong5 extends StatelessWidget {
  const WidgetFaktorPendorong5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Keinginan manusia untuk memperbaiki kehidupannya."
                    .toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/faktor-pendorong2.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: qerja.com",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "“Job seeker di Job fair yang diadakan oleh pemerintah maupun lembaga swasta”",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Dengan banyaknya manusia mencari kerja untuk memperbaiki kehidupannya, keinginan manusia memperbaiki kehidupan didasari oleh nilai hidup dan kepercayaan kepada Tuhan YME akan mengubah nasib manusia jika mau berusaha lebih baik dalam kehidupannya. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong6 extends StatelessWidget {
  const WidgetFaktorPendorong6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Majunya sistem pendidikan.".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Pendidikan merupakan pembelajaran pengetahuan, keterampilan, dan kebiasaana dari satu generasi ke generasi selanjutnya melalui pengajaran, pelatihan, serta penelitian, pendidikan yang didukung dengan sistem yang sesuai dan tepat dapat mendorong perubahan sosial.",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Contoh: Perubahan kurikulum yang disesuaikan dengan perkembangan zaman. Perubahan kurikulum dilakukan agar pendidikan sesuai dengan kemajuan zaman. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong7 extends StatelessWidget {
  const WidgetFaktorPendorong7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Penduduk heterogen".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Stratifikasi sosial terbuka memungkinkan adanya gerak sosial vertikal atau horizontal pada masyarakat. Sistem stratifikasi sosial terbuka memberi peluang bagi individu dan kelompok untuk menduduki lapisan masyarakat yang diinginkan. Proses ini mendorong terjadi perubahan sosial, Sistem ini dianut oleh masyarakat modern. Semakin modern suatu masyarakat, pelapisan sosialnya juga semakin terbuka.",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong8 extends StatelessWidget {
  const WidgetFaktorPendorong8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Toleransi terhadap perilaku menyimpang".toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Masyarakat pedalaman percaya setiap penyakit datang dari roh jahat dan mereka menggunakan ritual dukun untuk mengobatinya. Anggapan dan prosesi pengobatan tersebut tentu kurang tepat secara medis. Hal diatas merupakan perilaku menyimpang melanggar nilai dan norma dalam masyarakat, maka setiap dengan itu harus adanya sikap toleransi dan kemudian diarahkan ke perilaku yang lebih sesuai. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPendorong9 extends StatelessWidget {
  const WidgetFaktorPendorong9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Sistem stratifikasi sosial terbuka (open social stratification)"
                    .toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Masyarakat pedalaman percaya setiap penyakit datang dari roh jahat dan mereka menggunakan ritual dukun untuk mengobatinya. Anggapan dan prosesi pengobatan tersebut tentu kurang tepat secara medis. Hal diatas merupakan perilaku menyimpang melanggar nilai dan norma dalam masyarakat, maka setiap dengan itu harus adanya sikap toleransi dan kemudian diarahkan ke perilaku yang lebih sesuai. ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
