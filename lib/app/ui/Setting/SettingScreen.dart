import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Setting/KopetensiDasarScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/PengembangScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/PetunjukPenggunaanScreen.dart';
import 'package:mediaintersosial/app/ui/Setting/TujuanScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';
import 'package:mediaintersosial/app/widget/BoardTitleWidget.dart';
import 'package:mediaintersosial/app/widget/WidgetAppbarCloseMusic.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

var menuList = [
  {
    "images": "assets/menu/headtitle-30.png",
    "route": KopetensiDasarScreen(),
    "name": "Kopetensi Dasar"
  },
  {
    "images": "assets/menu/headtitle-31.png",
    "route": TujuanScreen(),
    "name": "Tujuan"
  },
  {
    "images": "assets/menu/headtitle-32.png",
    "route": PetunjukPenggunaanScreen(),
    "name": "Petunjuk Pengunaan"
  },
  {
    "images": "assets/menu/headtitle-33.png",
    "route": PengembangScreen(),
    "name": "Profil Pengembang"
  },
];

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetContent: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () => Get.to(menuList[0]['route'],
                              transition: Transition.cupertinoDialog,
                              duration: Duration(milliseconds: 700)),
                          child: Center(
                              child: Image.asset(menuList[0]['images'],
                                  height: Get.height * .12,
                                  width: Get.width * .35)),
                        ),
                      ),
                      SizedBox(
                        height: context.isTablet
                            ? Get.height * 0.1 / 2
                            : Get.height * 0.2 / 2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => Get.to(menuList[1]['route'],
                                transition: Transition.zoom,
                                duration: Duration(milliseconds: 700)),
                            child: Center(
                              child: Image.asset(menuList[1]['images'],
                                  height: Get.height * .12,
                                  width: Get.width * .35),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => Get.to(menuList[2]['route'],
                                transition: Transition.cupertinoDialog,
                                duration: Duration(milliseconds: 700)),
                            child: Center(
                              child: Image.asset(menuList[2]['images'],
                                  height: Get.height * .12,
                                  width: Get.width * .35),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.isTablet
                            ? Get.height * 0.1 / 2
                            : Get.height * 0.2 / 2,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Get.to(menuList[3]['route'],
                              transition: Transition.cupertinoDialog,
                              duration: Duration(milliseconds: 700)),
                          child: Center(
                            child: Image.asset(menuList[3]['images'],
                                height: Get.height * .12,
                                width: Get.width * .35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          widgetTitle: "assets/menu/headtitle-18.png",
        ),
        custombar: WidgetAppbarCloseMusic(),
      ),
    );
  }
}
