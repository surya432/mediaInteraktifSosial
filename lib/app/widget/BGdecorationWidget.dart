import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BGContainerWidget extends StatelessWidget {
  const BGContainerWidget(
      {Key key,
      @required this.custombar,
      @required this.content,
      @required this.kPaddingTop,
      this.isPadding = true,
      this.defaultImages = "assets/images/BG03-01.jpg"})
      : super(key: key);
  final Widget custombar;
  final Widget content;
  final double kPaddingTop;
  final bool isPadding;
  final String defaultImages;
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    var boxDecoration = BoxDecoration(
      image: DecorationImage(
        image: new AssetImage(defaultImages),
        fit: BoxFit.cover,
      ),
    );
    var paddintop = context.isTablet ? kPaddingTop + 20 : kPaddingTop + 10;
    return Container(
      decoration: boxDecoration,
      height: Get.height,
      width: Get.width,
      padding: isPadding
          ? EdgeInsets.only(top: paddintop, left: 24, right: 24, bottom: 16)
          : EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
      child: Stack(
        children: [
          custombar,
          Center(
            child: Container(
              // color: Colors.red,
              child: Center(
                child: content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
