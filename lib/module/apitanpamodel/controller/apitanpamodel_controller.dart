import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../view/apitanpamodel_view.dart';

class ApitanpamodelController extends GetxController {
  ApitanpamodelView? view;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  RxList items = [].obs;

  Future getData() async {
    var response = await Dio().get(
      "https://reqres.in/api/users?page=2",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    items.value = obj['data'];
    print(items);
  }
}
