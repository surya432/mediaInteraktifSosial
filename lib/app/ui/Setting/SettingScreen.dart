import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Setting/KopetensiDasarScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/PengembangScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/PetunjukPenggunaanScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/TujuanScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';


class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

var menuList = [
  {
    "images": "assets/Icon/button-14.png",
    "route": KopetensiDasarScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/Icon/button-15.png",
    "route": TujuanScreen(),
    "name": "Tujuan"
  },
  {
    "images": "assets/Icon/button-16.png",
    "route": PetunjukPenggunaanScreen(),
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/Icon/button-17.png",
    "route": PengembangScreen(),
    "name": "Profil Pengembang"
  },
];


class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetContent: Center(
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[0]['route'],
                            transition: Transition.cupertinoDialog,
                            duration: Duration(milliseconds: 700)),
                        child: Container(
                            child: Image.asset(menuList[0]['images'],
                                height: Get.height * .1, width: Get.height * .1)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[1]['route'],
                            transition: Transition.zoom,
                            duration: Duration(milliseconds: 700)),
                        child: Image.asset(menuList[1]['images'],
                            height: Get.height * .1, width: Get.height * .1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[2]['route'],
                            transition: Transition.cupertinoDialog,
                            duration: Duration(milliseconds: 700)),
                        child: Image.asset(menuList[2]['images'],
                            height: Get.height * .1, width: Get.height * .1),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Get.to(menuList[3]['route'],
                            transition: Transition.cupertinoDialog,
                            duration: Duration(milliseconds: 700)),
                        child: Image.asset(menuList[3]['images'],
                            height: Get.height * .1, width: Get.height * .1),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          widgetTitle: "assets/button/btn-07.png",
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
