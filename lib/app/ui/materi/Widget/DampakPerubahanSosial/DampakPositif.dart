import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class DampakPositifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: Container(
        child: GetX<PerubahanSosialController>(
            init: PerubahanSosialController(),
            initState: (state) => Get.find<PerubahanSosialController>()
                .initDampakPositifPerubahanSosial(),
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

class WidgetDampakPositif1 extends StatelessWidget {
  const WidgetDampakPositif1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Modernisasi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Modernisasi merupakan bentuk transformasi kehidupan masyarakat dari tradisional menuju modern. modernisasi berhasil jika masyarakat memenuhi syarat berikut: \n" +
                  "1) Bersedia menerima gagasan-gagasan baru dan melaksanakan cara baru.\n" +
                  "2) Peka terhadap waktu, lebih mementingkan masa depan dari masa lalu.\n" +
                  "3) Terlibat dalam perencanaan dan organisasi.\n" +
                  "4) Memiliki kepercayaan, untuk keunggulan ilmu pengetahuan dan teknologi.\n",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Modernisasi dalam masyarakat tidak hanya terjadi di bidang iptek. Modernisasi juga dapat terjadi di bidang lain seperti ekonomi, sosial, politik, dan budaya. ",
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

class WidgetDampakPositif2 extends StatelessWidget {
  const WidgetDampakPositif2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Efisiensi dalam kehidupan Masyarakat",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Perubahan sosial dapat mendorong kehidupan masyarakat lebih efisien. Efisien berarti upaya masyarakat memenuhi kebutuhan hidup dengan lebih hemat serta tidak membuang waktu, tenaga, dan biaya. Perubahan sosial yang mendorong proses efisiensi berkaitan dengan perkembangan teknologi.  Seperti penggunaan aplikasi ojek online, dengan Munculnya sistem ojek online meningkatkan efektivitas dan efisiensi masyarakat.  ",
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

class WidgetDampakPositif3 extends StatelessWidget {
  const WidgetDampakPositif3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kesejahteraan masyarakat meningkat",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Perubahan sosial meningkatkan kesejahteraan apabila menyebabkan perubahan kondisi kehidupan yang lebih baik. Terdapat tiga indikator kesejahteraan masyarakat, yaitu adanya peningkatan pendapatan, adanya peningkatan taraf kesehatan keluarga, serta memiliki investasi ekonomi seperti tabungan. Upaya peningkatan kesejahteraan salah satunya dalam proses pemberdayaan masyarakat. ",
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

class WidgetDampakPositif4 extends StatelessWidget {
  const WidgetDampakPositif4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Integrasi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Apabila masyarakat beradaptasi, berakulturasi, atau berasimilasi terhadap kebudayaan baru akan mendorong terjadinya integrasi. Integrasi diartikan sebagai pembauran hingga menjadi kesatuan yang utuh. Integrasi dapat terjadi pada dua atau lebih budaya, Integrasi dalam perubahan sosial dapat ditunjukkan dengan proses akulturasi dan asimilasi dalam masyarakat. ",
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

class WidgetDampakPositif5 extends StatelessWidget {
  const WidgetDampakPositif5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transformasi Politik",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Tranformasi politik merupakan proses perubahan politik suatu negara. Transformasi politik menyebabkan perubahan-perubahan yang bersifat mendasar. Seperti, pergantian presiden dan wakil presiden, pergantian kebijakan politik, serta pergantian sistem pemerintahan negara. Indonesia mengalami perubahan sistem pemerintahan dari struktur politik otoriter menuju demokrasi. Perubahan tersebut berpengaruh di bidang politik dan juga bidang-bidang lainnya.",
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
