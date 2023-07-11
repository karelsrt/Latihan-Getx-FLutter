import 'package:get/get.dart';
import '../view/argumen_view.dart';

class ArgumenController extends GetxController {
  ArgumenView? view;

  @override
  void onInit() {
    coba();
    super.onInit();
  }

  String? a;
  coba() {
    a = "asu";
  }
}
