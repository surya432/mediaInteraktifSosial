import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class FaktorInternalPerubahanSosialScreen extends StatelessWidget {
  const FaktorInternalPerubahanSosialScreen({Key key}) : super(key: key);

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
                .initFaktorInternalPerubahanSosial(),
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

class WidgetFaktorInternalPerubahanSosial1 extends StatelessWidget {
  const WidgetFaktorInternalPerubahanSosial1({Key key}) : super(key: key);

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
                "Penemuan baru".toUpperCase(),
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
              "Penemuan baru dalam masyarakat dipengaruhi oleh beberapa faktor, yaitu: kesadaran diri terhadap kekurangan unsur kebudayaan, para ahli yang berkualitas dalam masyarakat, Dorongan atau motivasi untuk menciptakan penemuan baru dalam masyarakat.",
              style: TextStyle(
                //fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                  "assets/images/faktorInternalperubahanSosial1.jpg",
                  height: Get.height * .5,
                  width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: republika.co.id",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Text(
              "Sulitnya mendapatkan air di daerah pegunungan, masyarakat menciptakan tempat penampungan dan mengalirkan dengan selang kerumah warga.",
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

class WidgetFaktorInternalPerubahanSosial2 extends StatelessWidget {
  const WidgetFaktorInternalPerubahanSosial2({Key key}) : super(key: key);

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
                "Demografi (perubahan jumlah penduduk)".toUpperCase(),
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
              "Perubahan jumlah penduduk menunjukkan kependudukan suatu wilayah bersifat dinamis. Kependudukan suatu wilayah dipengaruhi oleh jumlah kelahiran, kematian, dan migrasi. Perubahan kependudukan dapat memengaruhi perubahan pada sendi kehidupan dan menyebabkan munculnya permasalahan sosial dalam masyarakat. ",
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

class WidgetFaktorInternalPerubahanSosial3 extends StatelessWidget {
  const WidgetFaktorInternalPerubahanSosial3({Key key}) : super(key: key);

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
                "Konflik atau pertentangan dalam masyarakat".toUpperCase(),
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
              child: Image.asset(
                  "assets/images/faktorInternalperubahanSosial2.jpg",
                  height: Get.height * .5,
                  width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: fin.co.id",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                  "assets/images/faktorInternalperubahanSosial3.jpg",
                  height: Get.height * .5,
                  width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: detik.com",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Text(
              "Konflik penolakan RUU Omnibus Law merupakan interaksi sosial yang menjadi penyebab terjadinya perubahan sosial. Konflik atau pertentangan biasa terjadi antar individu dengan kelompok, maupun kelompok dengan kelompok. ",
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

class WidgetFaktorInternalPerubahanSosial4 extends StatelessWidget {
  const WidgetFaktorInternalPerubahanSosial4({Key key}) : super(key: key);

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
                "Pemberontakan/ Revolusi".toUpperCase(),
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
              "Terjadinya pemberontakan atau Revolusi dalam sutau pemerintahan negara akan meyebabkan terjadinya perubahan – perubahan besar dalam kehidupan negara tersebut. Seluruh lembaga kemasyarakatan, mulai dari bentuk negara sampai keluarga mengalami perubahan-perubahan yang mendasar. ",
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
