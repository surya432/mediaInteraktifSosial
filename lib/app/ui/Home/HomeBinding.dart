import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/Home/HomeController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
