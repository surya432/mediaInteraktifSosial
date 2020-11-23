import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class TeoriPerubahanSosialScreen extends StatelessWidget {
  const TeoriPerubahanSosialScreen({Key key}) : super(key: key);

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
                .initTeoriPerubahanSosial(),
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

class WidgetTeoriPerubahanSosial1 extends StatelessWidget {
  const WidgetTeoriPerubahanSosial1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. Teori Evolusi",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Teori evolusi menjelaskan bahwa perubahan sosial terjadi secara lambat untuk waktu yang lama dalam masyarakat. Menurut teori ini perubahan sosial terjadi karena perubahan pada cara peng-organisasian masyarakat, sistem kerja, pola pemikiran dan perkembangan sosial. Perubahan sosial dalam teori evolusi jarang menimbulkan konflik karena perubahannya berlangsung lambat dan cenderung tidak disadari.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/teoripenghambat1.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetTeoriPerubahanSosial2 extends StatelessWidget {
  const WidgetTeoriPerubahanSosial2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2. Teori Konflik",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Teori konflik merupakan perubahan sosial terbentuk karena adanya konflik dan ketegangan dalam masyarakat. Konflik ini biasanya berupa pertentangan antar kelas penguasa dengan masyarakat yang tertindas sehingga masyarakat dalam kelas yang lebih rendah menginginkan adanya perubahan dengan mengatasnamakan keadilan. Berdasarkan teori ini, jika memang perubahan yang dikehendaki berhasil tercapai, maka pada akhirnya masyarakat yang terbentuk akan hidup tanpa pembagian kelas.",
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

class WidgetTeoriPerubahanSosial3 extends StatelessWidget {
  const WidgetTeoriPerubahanSosial3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3. Teori Fungsionalis",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Teori Fungsionalis menyatakan tentang ketidakpuasan masyarakat terhadap keadaan sosial yang sedang berlangsung menjadi penyebab utama terjadinya perubahan sosial. Ketidakpuasan ini tidak dirasakan oleh semua anggota masyarakat, sebagian anggota masyarakat tidak menginginkan perubahan. Apabila lebih banyak yang menginginkan perubahan biasanya perubahan akan terjadi, tetapi apabila hanya kelompok minoritas dengan kekuatan kecil yang menginginkan perubahan, maka perubahan tersebut sulit untuk tercapai.",
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

class WidgetTeoriPerubahanSosial4 extends StatelessWidget {
  const WidgetTeoriPerubahanSosial4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "4. Teori Siklus",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Teori siklus menyatakan bahwa perubahan sosial ini bagaikan roda yang sedang berputar, artinya perubahan zamam merupakan sesuatu yang tidak dapat dihindari oleh manusia dan tidak dapat dikendalikan oleh siapapun. Bagaimanapun seseorang berusahan untuk mencegah terjadinya perubahan sosial mereka tidak akan mampu, karena perubahan sosial sudah seperti sifat alami yang dimiliki setiap lingkungan masyarakat.\n",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/teoripenghambat2.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
          ],
        ),
      ),
    );
  }
}
