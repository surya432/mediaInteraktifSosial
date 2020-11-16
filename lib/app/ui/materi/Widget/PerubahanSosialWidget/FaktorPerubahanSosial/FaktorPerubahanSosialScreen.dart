import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class FaktorPerubahanSosialScreen extends StatelessWidget {
  const FaktorPerubahanSosialScreen({Key key}) : super(key: key);

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
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () =>
                        Get.toNamed("/FAKTORINTERNALPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () =>
                        Get.toNamed("/FAKTOREXTERNALPERUBAHANSOSIAL"),
                    child: Image.asset("assets/button/btn-05.png",
                        height: Get.height * .1, width: Get.height * .1),
                  )),
                ],
              ),
              Spacer(),
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
