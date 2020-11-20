import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/BentukPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/PerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/controller/MateriController.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class MateriScreen extends StatelessWidget {
  const MateriScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: Container(
        child: BGContainerWidget(
          kPaddingTop: context.mediaQueryPadding.top,
          content: GetX<MateriController>(
              init: MateriController(),
              builder: (MateriController controller) {
                return BoardTitleWidget(
                  widgetContent: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetX(
                          builder: (MateriController controller) {
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
                          builder: (MateriController controller) {
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
                );
              }),
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
        ),
      ),
    );
  }
}

class WidgetMateri1 extends StatelessWidget {
  const WidgetMateri1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Perubahan sosial merupakan fenomena kehidupan yang dialami oleh setiap masyarakat di manapun dan kapan pun. Setiap masyarakat manusia selama hidupnya pasti mengalami perubahan-perubahan dalam berbagai aspek kehidupannya, yang terjadi di tengah-tengah pergaulan (interaksi) antara sesama individu warga masyarakat, demikian pula antara masyarakat dengan lingkungan hidupnya",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: "Gothic",
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class WidgetMateri2 extends StatelessWidget {
  const WidgetMateri2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () => Get.to(PerubahanSosialScreen(),
                      transition: Transition.leftToRight),
                  child: Image.asset("assets/button/btn-05.png",
                      height: Get.height * .1, width: Get.height * .1),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () => Get.to(BentukPerubahanSosialScreen()),
                  child: Image.asset("assets/button/btn-05.png",
                      height: Get.height * .1, width: Get.height * .1),
                )),
              ],
            ),
            Spacer(),
            Expanded(
                child: GestureDetector(
              onTap: () => Get.to(DampakPerubahanSosialScreen()),
              child: Image.asset("assets/button/btn-05.png",
                  height: Get.height * .1, width: Get.height * .1),
            )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
