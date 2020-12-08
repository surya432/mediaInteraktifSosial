import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class ProsesnyaPerubahanSosialScreen extends StatelessWidget {
  const ProsesnyaPerubahanSosialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    Get.lazyPut<PerubahanSosialController>(() => PerubahanSosialController());
    return Scaffold(
      body: Container(
        child: GetX<PerubahanSosialController>(
            initState: (state) => Get.find<PerubahanSosialController>()
                .initProsesnyaPerubahanSosial(),
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

class WidgetProsesnyaPerubahanSosial1 extends StatelessWidget {
  const WidgetProsesnyaPerubahanSosial1({Key key}) : super(key: key);

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
                "Perubahan yang direncanakan".toUpperCase(),
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
              "Perubahan yang direncanakan (planned change) merupakan perubahan yang direncanakan terlebih dahulu oleh pihak yang melakukan perubahan sosial dalam masyarakat. Perubahan yang direncanakan atau dikehendaki dapat direncanakan melalui program-program tertentu. Seperti perubahan kurikulum 2006 KTSP menjadi kurikulum 2013",
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

class WidgetProsesnyaPerubahanSosial2 extends StatelessWidget {
  const WidgetProsesnyaPerubahanSosial2({Key key}) : super(key: key);

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
                "Perubahan tidak direncanakan",
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
              child: Image.asset("assets/images/ProsesnyaPerubahanSosial1.png",
                  height: Get.height * .5, width: Get.width * .5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sumber: CNN Indonesia",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontFamily: "Gothic",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Kebakaran, menyebabkan beragam perubahan dalam kehidupan masyarakat. Kebakaran merupakan perubahan yang terjadi tanpa perencanaan yang terjadi diluar perkiraan masyarakat. Perubahan ini cenderung berdampak negatif dikarenakan perubahaanya tidak dikehendaki masyarakat. ",
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
