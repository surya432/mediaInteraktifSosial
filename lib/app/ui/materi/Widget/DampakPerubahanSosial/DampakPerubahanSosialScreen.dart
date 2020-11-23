import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

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
          widgetTitle: "assets/materi/headtitle-39.png",
          widgetContent: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () => Get.toNamed("/DAMPAKPOSITIFPERUBAHANSOSIAL"),
                    child: Image.asset("assets/materi/Dampak/headtitle-59.png",
                        height: context.height * .1, width: context.width * .3),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () => Get.toNamed("/DAMPAKNEGATIFPERUBAHANSOSIAL"),
                    child: Image.asset("assets/materi/Dampak/headtitle-60.png",
                        height: context.height * .1, width: context.width * .3),
                  )),
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
