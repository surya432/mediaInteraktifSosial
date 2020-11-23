import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardBackground extends StatelessWidget {
  const BoardBackground({Key key, @required this.dataContent})
      : super(key: key);
  final Widget dataContent;
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    var assetImage = new AssetImage("assets/images/board-01.png");
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: assetImage,
        fit: BoxFit.fill,
      ),
    );
    return Center(
      child: Container(
        decoration: boxDecoration,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        height: Get.height - context.mediaQueryPadding.top - 20,
        width: Get.width * 0.8,
        child: dataContent,
      ),
    );
  }
}
