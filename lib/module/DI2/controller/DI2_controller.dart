import 'package:get/get.dart';
import 'package:latihangetx/core.dart';

class Di2Controller extends GetxController {
  Di2View? view;
  @override
  void onInit() {
    coba();
    super.onInit();
  }

  final id = Get.find<ScanController>();

  coba() {
    print(" asuuuuu ${id.idtoko}");
  }
}
