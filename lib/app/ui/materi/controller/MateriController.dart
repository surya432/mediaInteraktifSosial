import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/MateriScreen.dart';

class MateriController extends GetxController {
  var menuList = List<Map<dynamic, dynamic>>().obs;
  var pageIndex = 0.obs;
  decrement() => pageIndex.value--;
  increment() => pageIndex.value++;

  void onInit() {
    initparameter();
    super.onInit();
  }

  void initparameter() {
    menuList.assignAll([
      {"route": WidgetMateri1(), "images": "assets/materi/headtitle-20.png"},
      {"route": WidgetMateri2(), "images": "assets/materi/headtitle-19.png"},
    ]);
  }
}
