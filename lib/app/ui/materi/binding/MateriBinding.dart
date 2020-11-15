import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/controller/MateriController.dart';

class MateriBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MateriController>(() => MateriController());
  }
}
