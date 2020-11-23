import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

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
          widgetTitle: "assets/slide/headtitle-50.png",
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
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/FAKTOREXTERNALPERUBAHANSOSIAL"),
                        child: Image.asset("assets/button/btn-05.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        custombar: WidgetAppbarCloseMusic(),
      ),
    );
  }
}
