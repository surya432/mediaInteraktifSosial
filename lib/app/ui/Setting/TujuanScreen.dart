import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class TujuanScreen extends StatelessWidget {
  const TujuanScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/menu/headtitle-16.png",
          widgetContent: Container(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.isTablet
                        ? Get.height * 0.1 / 2
                        : Get.height * 0.2 / 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Gothic",
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XII SMA dapat memahami konsep perubahan Sosial dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2.",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XII SMA dapat memahami bentuk perubahan Sosial dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Gothic",
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                            "Setelah menggunakan multimedia interaktif siswa kelas XII SMA dapat memahami dampak positif dan negatif perubahan Sosial dengan tepat.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Gothic",
                            )),
                      ),
                    ],
                  ),
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
