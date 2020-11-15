import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';

class PengembangScreen extends StatelessWidget {
  const PengembangScreen({Key key}) : super(key: key);

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
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/profile.jpg",
                          height: Get.height * 0.4,
                          width: Get.width * 0.2,
                          alignment: Alignment.topCenter),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Nama",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Hamdallah Firstya S",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("NIM",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("17010024074",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Jurusan",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Kurikulum dan Teknologi Pendidikan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Falkultas",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("Ilmu Pendidikan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("Email",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                  Text("Hamdallahfirstya27@gmail.com",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text("No. Telp",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Gothic",
                                        )),
                                  ),
                                  Text(" : ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                  Text("081335968881",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Gothic",
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
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
