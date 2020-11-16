import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class DampakPerubahanSosialScreen extends StatelessWidget {
  const DampakPerubahanSosialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/button/btn-05.png",
          widgetContent: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/PROSESNYAPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/ARAHPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/SIFATPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/KECEPATANPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: Get.height * .1, width: Get.height * .1),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () => Get.toNamed("/UKURANPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  )),
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
