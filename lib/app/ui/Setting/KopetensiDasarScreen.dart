import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class KopetensiDasarScreen extends StatelessWidget {
  const KopetensiDasarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/menu/headtitle-21.png",
          widgetContent: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
            child: SingleChildScrollView(
              child: Table(
                // border: TableBorder.all(),
                textBaseline: TextBaseline.alphabetic,
                children: [
                  TableRow(children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Kompetensi Dasar'.toUpperCase(),
                            style: TextStyle(
                                //fontSize: 16,
                                fontFamily: "Gothic",
                                color: Colors.white)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Indikator'.toUpperCase(),
                            style: TextStyle(
                                //fontSize: 16,
                                fontFamily: "Gothic",
                                color: Colors.white)),
                      )
                    ]),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "3.1 	Memahami berbagai jenis dan faktor-faktor perubahan sosial serta akibat yang ditimbulkannya dalam kehidupan masyarakat.",
                          style: TextStyle(
                              fontFamily: "Gothic", color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("•	Memahami konsep perubahan sosial.",
                              style: TextStyle(
                                  fontFamily: "Gothic", color: Colors.white)),
                          Text("•	Memahami bentuk perubahan sosial.",
                              style: TextStyle(
                                  fontFamily: "Gothic", color: Colors.white)),
                          Text(
                              "•	Memahami dampak positif dan negatif perubahan sosial",
                              style: TextStyle(
                                  fontFamily: "Gothic", color: Colors.white)),
                        ],
                      ),
                    )
                  ]),
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
