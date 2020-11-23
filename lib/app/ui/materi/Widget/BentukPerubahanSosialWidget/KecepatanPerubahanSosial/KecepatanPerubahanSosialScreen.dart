import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class KecepatanPerubahanSosialScreen extends StatelessWidget {
  const KecepatanPerubahanSosialScreen({Key key}) : super(key: key);

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
                .initKecepatanPerubahanSosial(),
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

class WidgetKecepatanPerubahanSosial1 extends StatelessWidget {
  const WidgetKecepatanPerubahanSosial1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Evolusi (perubahan secara lambat)",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Perubahan evolusi merupakan perubahan yang lama dengan diikuti perubahan kecil. Pada evolusi, perubahan yang terjadi tanpa ada tekanan atau terjadi dengan sendirinya, kenapa? Karena masyarakat biasanya selalu berusaha menyesuaikan diri dengan keadaan atau kondisi yang baru timbul di lingkungannya. Seperti perubahan dari masyarakat tradisional ke modern.",
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

class WidgetKecepatanPerubahanSosial2 extends StatelessWidget {
  const WidgetKecepatanPerubahanSosial2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Revolusi (perubahan secara cepat)",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "Gothic",
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              "Perubahan revolusi merupakan perubahan yang terjadi secara cepat dalam dasar atau sendi-sendir pokok yang terdapat dalam masyarakat. Peubahan ini dapat direncanakan terlebih dahulu dan biasanya harus ada pemimpin kelompok masyarakat. Seperti revolusi industry yang berkembang pesat. ",
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
