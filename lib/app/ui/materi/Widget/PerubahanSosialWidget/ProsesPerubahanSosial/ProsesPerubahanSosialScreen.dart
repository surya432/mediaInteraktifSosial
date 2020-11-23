import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class ProsesPerubahanSosialScreen extends StatelessWidget {
  const ProsesPerubahanSosialScreen({Key key}) : super(key: key);

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
                .initProsesPerubahanSosial(),
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

class WidgetperubahanSosial1 extends StatelessWidget {
  const WidgetperubahanSosial1({Key key}) : super(key: key);

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
                "ASIMILASI",
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
              "Asimilasi merupakan proses pembauran dua kebudayaan disertai hilangnya ciri khas kebudayaan asli sehingga membentuk kebudayaan baru. Asimilasi akan terjadi jika terdapat beberapa faktor yaitu: ",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "• Golongan-golongan manusia dengan latar belakang kebudayaan yang berbeda-beda\n" +
                  "• Saling bergaul langsung secara intensif untuk waktu yang lama\n" +
                  "• Kebudayaan-kebudayaan golongan-golongan tadi masingmasing berubah sifatnya yang khas, dan juga unsurunsurnya berubah wujudnya menjadi unsur-unsur kebudayaan campuran.",
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

class WidgetperubahanSosial2 extends StatelessWidget {
  const WidgetperubahanSosial2({Key key}) : super(key: key);

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
                "DEFUSI",
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
              "Difusi merupakan suatu proses penyebaran kebudayaan dari satu lingkup kebudayaan ke lingkup kebudayaan yang lain melalui teknik meniru atau imitasi. Contohnya penyebaran kosa kata asing yang mengubah bahasa Indonesia menjadi lebih modern yaitu gerilyawan, ilmuwan, dan pancasilais. Penyerapan kosa kata baru itulah yang disebut dengan difusi. ",
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

class WidgetperubahanSosial3 extends StatelessWidget {
  const WidgetperubahanSosial3({Key key}) : super(key: key);

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
                "Akulturasi".toUpperCase(),
                style: TextStyle(
                  //fontSize: 24,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Akulturasi merupakan proses perpaduan dua kebudayaan atau lebih yang menghasilkan budaya baru tanpa menghilangkan unsur-unsur budaya tersebut. Contoh dari akulturasi sendiri adalah baju koko, dikarenakan baju koko merupakan perpaduan budaya tiongkok dan Indonesia, perpaduan kedua unsur budaya terjadi sejak bangsa tiongkok melakukan perdagangan di Nusantara.",
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
