import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class PetunjukPenggunaanScreen extends StatelessWidget {
  const PetunjukPenggunaanScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/menu/headtitle-22.png",
          widgetContent: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gunakan media interaktif ini untuk mempermudah proses pembelajaran Sosiologi materi PERUBAHAN SOSIAL DALAM MASYARAKAT, perhatikan seiap materi yang disajikan dan asah kemampuanmu di menu kuis sebahai bahan evaluasi.",
                    style: TextStyle(
                      //fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Gothic",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Tombol yang dapat digunakan",
                    style: TextStyle(
                      //fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Gothic",
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("assets/button/btn-10.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-08.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-12.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-03.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-04.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-12.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/button/btn-05.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("assets/kuis/headtitle-61.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/kuis/headtitle-62.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/kuis/headtitle-63.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/kuis/headtitle-64.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("assets/materi/headtitle-34.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/materi/headtitle-35.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/materi/headtitle-36.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("assets/menu/headtitle-30.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/menu/headtitle-31.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(
                        child: Image.asset("assets/menu/headtitle-32.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("assets/menu/headtitle-33.png",
                            height: context.height * .1,
                            width: context.width * .3),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
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
