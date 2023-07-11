import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../helper/SharedPreferenceHelper.dart';
import '../view/getbuilderapi_view.dart';

class GetbuilderapiController extends GetxController {
  GetbuilderapiView? view;

  @override
  void onInit() {
    ambilData();
    getUserData();
    super.onInit();
  }

  List item = [];
  ambilData() async {
    var response = await Dio().get(
      "https://reqres.in/api/users?page=2",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;

    item = obj['data'];
    SharedPreferenceHelper().saveUserData(item);

    //print(item);
    update();
  }

  Future<void> getUserData() async {
    List? userData = await SharedPreferenceHelper().getUserData();
    if (userData != null) {
      // Lakukan sesuatu dengan userData
      print(userData);
      print(userData[1]['last_name']);
    } else {
      // Data tidak ditemukan
      print('Data tidak ditemukan');
    }
  }
}
