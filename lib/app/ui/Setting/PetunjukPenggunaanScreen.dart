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
          widgetTitle: "assets/menu/headtitle-23.png",
          widgetContent: Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Gunakan media interaktif ini untuk mempermudah proses pembelajaran Sosiologi materi PERUBAHAN SOSIAL DALAM MASYARAKAT, perhatikan seiap materi yang disajikan dan asah kemampuanmu di menu kuis sebahai bahan evaluasi.",
                    style: TextStyle(
                      fontSize: 16,
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
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Gothic",
                    ),
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
