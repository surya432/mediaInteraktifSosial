import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          onTap: () => {},
          child: Image.asset("assets/button/btn-03.png",
              height: context.height * 0.12, width: context.height * 0.12),
        ),
        GestureDetector(
          onTap: () => Get.back(),
          child: Image.asset("assets/button/btn-05.png",
              height: context.height * 0.12, width: context.height * 0.12),
        ),
      ],
    );
  }
}
