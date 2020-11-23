import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

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
          widgetTitle: "assets/materi/headtitle-37.png",
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
                    child: Image.asset("assets/slide/headtitle-40.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.to(FaktorPerubahanSosialScreen(),
                        transition: Transition.rightToLeft,
                        duration: Duration(seconds: 1)),
                    child: Image.asset("assets/slide/headtitle-41.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/FAKTORPENDORONGPERUBAHANSOSIAL"),
                    child: Image.asset("assets/slide/headtitle-42.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/FAKTORPENHAMBATPERUBAHANSOSIAL"),
                    child: Image.asset("assets/slide/headtitle-43.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/AGENPERUBAHANSOSIAL"),
                    child: Image.asset("assets/slide/headtitle-44.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
                  GestureDetector(
                    onTap: () => Get.toNamed("/TEORIPERUBAHANSOSIAL"),
                    child: Image.asset("assets/slide/headtitle-45.png",
                        height: context.height * .1, width: context.width * .3),
                  ),
                  SizedBox(height: Get.height * .02),
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
