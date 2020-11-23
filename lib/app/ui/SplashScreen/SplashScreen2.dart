import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key key}) : super(key: key);

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    precacheImage(new AssetImage("assets/images/BG03-01.jpg"), Get.context);
    precacheImage(new AssetImage("assets/images/BG02-01.jpg"), Get.context);
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCubic);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //   controller.reverse();
        // } else if (status == AnimationStatus.dismissed) {
        // controller.forward();
        // Get.off(
        //   HomeScreen(),
        //   // transition: Transition.zoom,
        //   // duration: new Duration(milliseconds: 200),
        // );
        Get.toNamed("/HOME");
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double height = Get.height * 0.4;
    double width = Get.width * 0.7;
    return Container(
      color: Colors.white,
      child: FadeTransition(
        opacity: animation,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/tp.png',
                height: height,
                width: width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
