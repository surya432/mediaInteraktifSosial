import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class FaktorPenghambatScreen extends StatelessWidget {
  const FaktorPenghambatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    Get.lazyPut<PerubahanSosialController>(() => PerubahanSosialController());
    return Scaffold(
      body: Container(
        child: GetX<PerubahanSosialController>(
            init: PerubahanSosialController(),
            initState: (state) => Get.find<PerubahanSosialController>()
                .initFaktorPenghambatPerubahanSosial(),
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
                          child: controller
                              .menuList[controller.pageIndex.toInt()]['route'],
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
      ),
    );
  }
}

class WidgetFaktorPenghambat1 extends StatelessWidget {
  const WidgetFaktorPenghambat1({Key key}) : super(key: key);

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
                "Adat dan kebiasaan yang sulit diubah".toUpperCase(),
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
              "Adat dan kebiasaan suatu masyarakat cenderung dipegang teguh oleh anggotanya. Adat dalam masyarakat berisi pola perilaku yang diyakini, diterima oleh masyarakat, dan bersifat kekal. Adat dan kebiasaan yang sulit diubah menyebabkan pola pikir dan perilaku masyarakat sulit diubah.",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/faktorpenghambat1.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("“Tradisi berjalan tanpa alas kaki suku Baduy”",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat2 extends StatelessWidget {
  const WidgetFaktorPenghambat2({Key key}) : super(key: key);

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
                "Perkembangan ilmu pengetahuan terlambat".toUpperCase(),
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
              "Adat dan kebiasaan suatu masyarakat cenderung dipegang teguh oleh anggotanya. Adat dalam masyarakat berisi pola perilaku yang diyakini, diterima oleh masyarakat, dan bersifat kekal. Adat dan kebiasaan yang sulit diubah menyebabkan pola pikir dan perilaku masyarakat sulit diubah.",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Ilmu pengetahuan merupakan faktor penting dalam perubahan sosial. Apabila perkembangan ilmu pengetahuan terlambat, perubahan sosial pun terhambat. Terhambatnya perkembangan ilmu pengetahuan disebabkan oleh dua faktor yaitu: Terisolasinya suatu daerah terhadap kemajuan ilmu pengetahuan, Pengaruh struktural. Pengaruh struktural mengarah pada terhambatnya perkembangan ilmu pengetahuan secara struktural.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontFamily: "Gothic", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat3 extends StatelessWidget {
  const WidgetFaktorPenghambat3({Key key}) : super(key: key);

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
                "Prasangka terhadap kebudayaan lain".toUpperCase(),
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
                "Prasangka terhadap kebudayaan baru dan asing terjadi karena adanya trauma yang pernah dialami ketika berhubungan dengan masyarakat lain.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
            Text(
                "Contohnya: masyarakat yang pernah mengalami penjajahan bangsa asing. Selain itu, prasangka terhadap kebudayaan baru dan asing dapat dipengaruhi oleh perbedaan nilai dan norma yang berkembang di masyarakat. ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat4 extends StatelessWidget {
  const WidgetFaktorPenghambat4({Key key}) : super(key: key);

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
                "Kurangnya interaksi dengan masyarakat lain".toUpperCase(),
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
                "Masyarakat yang kurang berinteraksi dengan masyarakat lain menyebabkan kurang mendapat informasi mengenai hasil kebudayaan serta peradaban masyarakat lain. Kondisi ini terjadi karena mereka terisolasi secara geografis ataupun kultural. Isolasi secara geografis terjadi karena bertempat tinggal di daerah terpencil. isolasi secara kultural terjadi karena masyarakat menolak kebudayaan dari masyarakat lain.  ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat5 extends StatelessWidget {
  const WidgetFaktorPenghambat5({Key key}) : super(key: key);

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
                "Hambatan-hambatan yang bersifat ideologis".toUpperCase(),
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
                "Ideologi merupakan cara pandang masyarakat terhadap suatu hal. Ideologi suatu masyarakat dipengaruhi oleh nilai, norma, dan agama yang dianutnya. Mereka akan memandang hal-hal baru dengan menggunakan ideologinya. Setiap upaya mengubah masyarakat terkadang bertentangan dengan ideologi yang telah dianut. Apabila hal baru yang dianggap tidak sesuai ideologi, mereka akan menolak meskipun hal-hal baru tersebut bermanfaat bagi kehidupan.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat6 extends StatelessWidget {
  const WidgetFaktorPenghambat6({Key key}) : super(key: key);

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
                "Rasa takut terjadinya kegoyahan pada intergrasi kebudayaan"
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
                "Perubahan sosial dapat menyebabkan perubahan terhadap aspek kehidupan manusia. Missal perubahan sistem nilai dan norma masyarakat. Masyarakat yang belum siap menerima perubahan sistem nilai dan norma, dapat mengalami ketidakteraturan yang mengarah pada kegoyahan integrasi kebudayaan. Adapun integrasi kebudayaan merupakan penyesuaian antarunsur kebudayaan yang berbeda sehingga mencapai keserasian fungsi dalam masyarakat",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat7 extends StatelessWidget {
  const WidgetFaktorPenghambat7({Key key}) : super(key: key);

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
                "Adanya kepentingan yang tertanam kuat (vested interest)"
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
                "Kepentingan yang tertanam kuat (vested interest) dapat menghambat perubahan sosial karena masyarakat merasa mereka berada pada keadaan yang dianggap baik. Dalam setiap kehidupan masyarakat, akan ada kelompok yang ingin mempertahankan kedudukan atau mewujudkan ambisinya dalam meraih tujuan pribadi atau golongan. Kelompok-kelompok ini akan berupaya keras mempertahankan posisinya dalam masyarakat",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class WidgetFaktorPenghambat8 extends StatelessWidget {
  const WidgetFaktorPenghambat8({Key key}) : super(key: key);

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
                "Sikap tradisional masyarakat".toUpperCase(),
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
                "Sikap tradisional masyarakat merujuk pada sikap mempertahankan apa yang sudah diajarkan nenek moyang sehingga dianggap sebagai kebenaran mutlak. Masyarakat yang masih mengagungkan tradisi masa lampau tergolong kaum konservatif. Kaum konservatif yaitu golongan masyarakat yang tidak menghendaki perubahan di masyarakat. Karena itu, mereka beranggapan apabila mengubah nilai yang telah diajarkan nenek moyang dapat menyebabkan malapetaka. ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Gothic", color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
