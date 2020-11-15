import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/PerubahanSosialController.dart';

class PerubahanSosialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerubahanSosialController>(() => PerubahanSosialController());
  }
}
