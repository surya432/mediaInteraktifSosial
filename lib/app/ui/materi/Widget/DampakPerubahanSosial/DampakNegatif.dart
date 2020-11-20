import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class DampakNegatifScreen extends StatelessWidget {
  const DampakNegatifScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: Container(
        child: GetX<PerubahanSosialController>(
            init: PerubahanSosialController(),
            initState: (state) => Get.find<PerubahanSosialController>()
                .initDampakNegatifPerubahanSosial(),
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

class WidgetDampakNegatif1 extends StatelessWidget {
  const WidgetDampakNegatif1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Culture shock",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Culture shock merupakan keadaan masyarakat yang merasa kebingungan terhadap kebudayaannya. Kondisi tersebut disebabkan oleh perubahan yang terjadi dalam waktu singkat dan membingungkan masyarakat. Terdapat tiga dimensi kebingungan yang akan dialami masyarakat ketika mengalami culture shock yaitu: Dimensi affective, Dimensi behavior, Dimensi cognitive.",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif2 extends StatelessWidget {
  const WidgetDampakNegatif2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kesenjangan Budaya (Cultural Lag)",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Cultural lag merupakan pertumbuhan kebudayaan yang tidak selalu sama cepat dalam keseluruhan unsur budaya lainnya. Artinya, ada kebudayaan yang tumbuh secara cepat dan ada pula bagian lain yang pertumbuhannya secara lambat. Konsep kesenjangan budaya mengacu pada kecenderungan dari kebiasaan sosial dan pola organisasi sosial yang tertinggal di perubahan dalam kebudayaan materiel. Akibatnya, perubahan sosial selalu ditandai dengan ketegangan antara kebudayaan materiel dan nonmateriel.",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif3 extends StatelessWidget {
  const WidgetDampakNegatif3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Anomi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Anomi adalah istilah yang diperkenalkan oleh Emile Durkheim untuk menggambarkan keadaan kacau tanpa peraturan. Anomi adalah suatu keadaan tanpa peraturan/norma. Keadaan tanpa peraturan tersebut dapat disebabkan oleh perubahan sosial. Seperti, Perang menyebabkan nilai dan norma masyarakat memudar karena lembaga sosial tidak berfungsi optimal. Dan masyarakat belum menciptakan nilai dan norma baru yang berfungsi sebagai pedoman berperilaku. Kondisi inilah yang disebut anomi. ",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif4 extends StatelessWidget {
  const WidgetDampakNegatif4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Disorganisasi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Disorganisasi diartikan sebagai keadaan tanpa aturan karena adanya perubahan pada lembaga sosial tertentu, yang menyebabkan pudarnya nilai dan norma sosial oleh perubahan sosial dalam masyarakat. Pudarnya nilai dan norma sosial yang dipengaruhi oleh perubahan sosial dapat terjadi akibat masuknya kebudayaan dari luar. ",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif5 extends StatelessWidget {
  const WidgetDampakNegatif5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pudarnya solidaritas sosial",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Solidaritas merupakan aspek penting di kehidupan masyarakat. Dengan adanya solidaritas, hubungan sosial antar masyarakat terjalin dengan baik. Tetapi, di kehidupan masyarakat modern mulai menunjukkan kecenderungan pudarnya solidaritas sosial. Masyarakat modern mementingkan kesibukan pribadi hingga sosialisasi sekitar sering terabaikan. ",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif6 extends StatelessWidget {
  const WidgetDampakNegatif6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Peningkatan tindak kriminalitas",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Kriminalitas merupakan dampak perubahan sosial yang tidak diinginkan. Peningkatan tindak kriminalitas terjadi akibat ketidakmampuan masyarakat menemukan solusi menghadapi perubahan sosial dalam kehidupannya. Kondisi demikian memberikan beban psikologis bagi seseorang untuk dapat mencari solusi dalam mengatasi kesulitan. Keinginan untuk segera terbebas dari kesulitan tidak imbang dengan kuatnya iman mendorong individu melakukan tindak kriminal.",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif7 extends StatelessWidget {
  const WidgetDampakNegatif7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pencemaran Lingkungan",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Hasil penemuan baru (discovery) dan invention mendorong pengembangan produk atau alat yang semakin memudahkan kehidupan masyarakat. Tetapi, penemuan baru dapat menyebabkan timbulnya masalah sosial seperti plastik. Plastik merupakan salah satu penemuan tetapi penggunaan yang tidak bijak dapat menimbulkan permasalahan. Sampah plastik yang tidak terurai menimbulkan masalah baru dan menyebabkan bencana banjir. ",
              style: TextStyle(
                fontSize: 16,
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

class WidgetDampakNegatif8 extends StatelessWidget {
  const WidgetDampakNegatif8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Marginalisasi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Marginalisasi merujuk pada orang yang mengalami pembatasan terhadap berbagai aspek kehidupan hingga berada pada pinggiran (terabaikan sistem dalam masyarakat). Marginalisasi terjadi ketika suatu kelompok masyarakat tidak dapat mengakomodasi proses perubahan sosial. Seperti proses industrialisasi. Industrialisasi tentu membawa dampak positif bagi masyarakat, dan dampak negatif menyebabkan beralihnya fungsi lahan produktif pertanian. ",
              style: TextStyle(
                fontSize: 16,
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
