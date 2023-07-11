import 'package:get/get.dart';
import '../view/GetBuilder_view.dart';

class GetbuilderController extends GetxController {
  GetbuilderView? view;

  int count = 0;

  tambah() {
    count++;
    update();
  }

  kurang() {
    count--;
    update();
  }
}
