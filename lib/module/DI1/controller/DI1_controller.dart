import 'package:get/get.dart';
import '../../DI2/view/DI2_view.dart';
import '../view/DI1_view.dart';

class Di1Controller extends GetxController {
  Di1View? view;

  RxString ok = "".obs;
  RxString ok2 = "".obs;

  coba() {
    ok.value = "asu";
    ok2.value = "bb";
    Get.to(
      () => const Di2View(),
      binding: BindingsBuilder.put(() => Di1Controller()),
    );
  }
}
