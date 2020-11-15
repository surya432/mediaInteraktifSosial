import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardBackground extends StatelessWidget {
  const BoardBackground({Key key, @required this.dataContent})
      : super(key: key);
  final Widget dataContent;
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage("assets/images/BG03-01.jpg");
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: assetImage,
        fit: BoxFit.fill,
      ),
    );
    return Center(
      child: Container(
        decoration: boxDecoration,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        height: Get.height - context.mediaQueryPadding.top - 20,
        width: Get.width * 0.9,
        child: Center(child: dataContent),
      ),
    );
  }
}
