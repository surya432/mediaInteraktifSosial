import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/widget/BoardDecorationWidget.dart';

class BoardTitleWidget extends StatelessWidget {
  const BoardTitleWidget({
    Key key,
    @required this.widgetContent,
    @required this.widgetTitle,
  }) : super(key: key);
  final Widget widgetContent;
  final String widgetTitle;
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    return Container(
      // color: Colors.amberAccent,
      height: context.isTablet ? Get.height * 0.7 : Get.height * 0.8,
      child: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: context.isTablet ? Get.height * 0.7 : Get.height * 0.8,
            padding: EdgeInsets.only(
                left:16,
                right: 16,
                bottom: 16,
                top: context.isTablet
                    ? Get.height * 0.1 / 2
                    : Get.height * 0.2 / 2),
            child: BoardBackground(
              dataContent: widgetContent,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                widgetTitle,
                height:
                    context.isTablet ? Get.height * 0.12 : Get.height * 0.22,
                width: Get.width * 0.3,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
