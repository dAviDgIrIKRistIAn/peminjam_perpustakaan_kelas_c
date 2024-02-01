import 'package:get/get.dart';

import '../controllers/namahalaman_controller.dart';

class NamahalamanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NamahalamanController>(
      () => NamahalamanController(),
    );
  }
}
