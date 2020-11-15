import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorExternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorInternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/ProsesPerubahanSosialScreen.dart';

class PerubahanSosialController extends GetxController {
  var menuList = List<Map<dynamic, dynamic>>().obs;
  var pageIndex = 0.obs;
  decrement() => pageIndex.value--;
  increment() => pageIndex.value++;

  void onInit() {
    super.onInit();
  }

  initProsesPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetperubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetperubahanSosial2(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetperubahanSosial3(),
        "images": "assets/button/btn-05.png"
      },
    ]);
  }

  initFaktorExternalPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorExternalPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetFaktorExternalPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetFaktorExternalPerubahanSosial3(),
        "images": "assets/button/btn-05.png"
      },
    ]);
  }

  initFaktorInternalPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorInternalPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial3(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial4(),
        "images": "assets/button/btn-05.png"
      },
    ]);
  }
}
