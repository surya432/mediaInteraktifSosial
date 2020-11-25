import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Home/HomeScreen.dart';
import 'package:mediaintersosial/app/widget/BGdecorationWidget.dart';

class QuizDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage("assets/kuis/button-kuis-25.png");
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: assetImage,
        fit: BoxFit.fill,
      ),
    );

    return Scaffold(
      body: BGContainerWidget(
        isPadding: false,
        kPaddingTop: context.mediaQueryPadding.top,
        content: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                // offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              height: 254,
              width: context.width / 2,
              decoration: boxDecoration,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(25),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 55),
                        child: Text(
                          Get.arguments != null
                              ? Get.arguments.toString()
                              : "0",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () => Get.off(HomeScreen()),
                      child: Image.asset(
                        "assets/button/btn-05.png",
                        height: context.height * 0.1,
                        width: context.width * 0.1,
                      ),
                    ),
                    right: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
        custombar: Container(),
      ),
    );
  }
}
