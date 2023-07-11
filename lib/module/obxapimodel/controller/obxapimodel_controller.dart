import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../helper/SharedPreferenceHelper.dart';
import '../model/respon_model.dart';
import '../view/obxapimodel_view.dart';

class ObxapimodelController extends GetxController {
  ObxapimodelView? view;

  @override
  void onInit() {
    fetchResponNama();
    super.onInit();
  }

  RxList<ResponNama> itemList = <ResponNama>[].obs;

  Future fetchResponNama() async {
    try {
      var response = await Dio().get(
        "https://reqres.in/api/users",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
        itemList.assignAll(
          List<ResponNama>.from(
            response.data['data'].map(
              (item) => ResponNama.fromJson(item),
            ),
          ),
        );
        SharedPreferenceHelper().saveUserData(response.data['data']);
      } else {
        throw Exception('Failed to fetch ResponNama');
      }
    } on Exception catch (err) {
      print(err);
    }
  }
}
