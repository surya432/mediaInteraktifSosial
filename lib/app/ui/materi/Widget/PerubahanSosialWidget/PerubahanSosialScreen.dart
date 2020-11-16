import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class PerubahanSosialScreen extends StatelessWidget {
  const PerubahanSosialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/button/btn-05.png",
          widgetContent: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed("/PROSESPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.to(FaktorPerubahanSosialScreen(),
                        transition: Transition.rightToLeft,
                        duration: Duration(seconds: 1)),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/FAKTORPENDORONGPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/FAKTORPENHAMBATPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/AGENPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/TEORIPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  ),
                  SizedBox(height: Get.height * .02),
                ],
              ),
            ),
          ),
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
      ),
    );
  }
}
