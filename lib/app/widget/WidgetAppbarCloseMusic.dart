import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Home/HomeController.dart';

class WidgetAppbarCloseMusic extends StatelessWidget {
  const WidgetAppbarCloseMusic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Image.asset("assets/button/btn-10.png",
              height: context.height * 0.1, width: context.height * 0.1),
        ),
        GestureDetector(
          onTap: () => Get.find<HomeController>().playMusic(),
          child: Obx(() => Image.asset(Get.find<HomeController>().getImagesPlay,
              height: context.height * 0.1, width: context.height * 0.1)),
        ),
      ],
    );
  }
}
