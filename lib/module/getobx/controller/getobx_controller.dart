import 'package:get/get.dart';
import '../view/getobx_view.dart';

class GetobxController extends GetxController {
  GetobxView? view;

  RxInt counter = 0.obs;

  tambah() async {
    counter++;
  }

  kurang() {
    counter--;
  }
}
