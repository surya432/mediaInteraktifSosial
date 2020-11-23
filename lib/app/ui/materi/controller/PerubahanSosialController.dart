import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/ArahPerubahanSosial/ArahPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/KecepatanPerubahanSosial/KecepatanPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/ProsesnyaPerubahanSosial/ProsesnyaPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/SifatPerubahanSosial/SifatPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/UkuranPerubahan/UkuranPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakNegatif.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakPositif.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/AgenPerubahanSosial/AgenPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPendorongPerubahanSosial/FaktorPendorongPerubahanSosial.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPenghambat/FaktorPenghambatScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorExternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorInternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/ProsesPerubahanSosial/ProsesPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/TeoriPerubahanSosial/TeoriPerubahanSosialScreen.dart';

class PerubahanSosialController extends GetxController {
  var menuList = List<Map<dynamic, dynamic>>().obs;
  var pageIndex = 0.obs;
  decrement() => pageIndex.value--;
  increment() => pageIndex.value++;

  void onInit() {
    pageIndex.value = 0;
    menuList.clear();
    super.onInit();
  }

  initProsesPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetperubahanSosial1(),
        "images": "assets/slide/headtitle-46.png"
      },
      {
        "route": WidgetperubahanSosial2(),
        "images": "assets/slide/headtitle-46.png"
      },
      {
        "route": WidgetperubahanSosial3(),
        "images": "assets/slide/headtitle-46.png"
      },
    ]);
  }

  initFaktorExternalPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorExternalPerubahanSosial1(),
        "images": "assets/slide/headtitle-50.png"
      },
      {
        "route": WidgetFaktorExternalPerubahanSosial2(),
        "images": "assets/slide/headtitle-50.png"
      },
      {
        "route": WidgetFaktorExternalPerubahanSosial3(),
        "images": "assets/slide/headtitle-50.png"
      },
    ]);
  }

  initFaktorInternalPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorInternalPerubahanSosial1(),
        "images": "assets/slide/headtitle-50.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial2(),
        "images": "assets/slide/headtitle-50.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial3(),
        "images": "assets/slide/headtitle-50.png"
      },
      {
        "route": WidgetFaktorInternalPerubahanSosial4(),
        "images": "assets/slide/headtitle-50.png"
      },
    ]);
  }

  initFaktorPendorongPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorPendorong1(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong2(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong3(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong4(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong6(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong7(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong8(),
        "images": "assets/slide/headtitle-49.png"
      },
      {
        "route": WidgetFaktorPendorong9(),
        "images": "assets/slide/headtitle-49.png"
      },
    ]);
  }

  initFaktorPenghambatPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetFaktorPenghambat1(),
        "images": "assets/slide/headtitle-51.png"
      },
      {
        "route": WidgetFaktorPenghambat2(),
        "images": "assets/slide/headtitle-51.png"
      },
      {
        "route": WidgetFaktorPenghambat3(),
        "images": "assets/slide/headtitle-51.png"
      },
      {
        "route": WidgetFaktorPenghambat4(),
        "images": "assets/slide/headtitle-51.png"
      },
    ]);
  }

  initAgenPerubahanSosialPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetAgenPerubahanSosial1(),
        "images": "assets/slide/headtitle-47.png"
      },
      {
        "route": WidgetAgenPerubahanSosial2(),
        "images": "assets/slide/headtitle-47.png"
      },
    ]);
  }

  initTeoriPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetTeoriPerubahanSosial1(),
        "images": "assets/slide/headtitle-48.png"
      },
      {
        "route": WidgetTeoriPerubahanSosial2(),
        "images": "assets/slide/headtitle-48.png"
      },
      {
        "route": WidgetTeoriPerubahanSosial3(),
        "images": "assets/slide/headtitle-48.png"
      },
      {
        "route": WidgetTeoriPerubahanSosial4(),
        "images": "assets/slide/headtitle-48.png"
      },
    ]);
  }

  initUkuranPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetUkuranPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetUkuranPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      }
    ]);
  }

  initKecepatanPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetKecepatanPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetKecepatanPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      }
    ]);
  }

  initSifatPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetSifatPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetSifatPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      }
    ]);
  }

  initArahPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetArahPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetArahPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      }
    ]);
  }

  initProsesnyaPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {
        "route": WidgetProsesnyaPerubahanSosial1(),
        "images": "assets/button/btn-05.png"
      },
      {
        "route": WidgetProsesnyaPerubahanSosial2(),
        "images": "assets/button/btn-05.png"
      }
    ]);
  }

  initDampakPositifPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {"route": WidgetDampakPositif1(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakPositif2(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakPositif3(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakPositif4(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakPositif5(), "images": "assets/button/btn-05.png"}
    ]);
  }

  initDampakNegatifPerubahanSosial() {
    pageIndex.value = 0;
    menuList.clear();
    menuList.assignAll([
      {"route": WidgetDampakNegatif1(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif2(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif3(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif4(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif5(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif6(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif7(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif8(), "images": "assets/button/btn-05.png"}
    ]);
  }
}
