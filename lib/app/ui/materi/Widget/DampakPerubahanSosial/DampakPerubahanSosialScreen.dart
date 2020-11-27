import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/PlayerDampak.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: context.height * .3,
                    width: context.width * .5,
                    child: GestureDetector(
                      onTap: () => Get.to(PlayerDampakScreen()),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/BG-DAmpak.jpg",
                              height: context.height * .3,
                              width: context.width * .5),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Center(
                              child: Image.asset("assets/button/btn-01.png",
                                  height: context.height * .1,
                                  width: context.width * .1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/DAMPAKPOSITIFPERUBAHANSOSIAL"),
                        child: Image.asset(
                            "assets/materi/Dampak/headtitle-59.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () =>
                            Get.toNamed("/DAMPAKNEGATIFPERUBAHANSOSIAL"),
                        child: Image.asset(
                            "assets/materi/Dampak/headtitle-60.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      )),
                    ],
                  ),
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
