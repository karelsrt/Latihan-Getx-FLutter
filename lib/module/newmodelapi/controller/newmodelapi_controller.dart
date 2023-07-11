import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:latihangetx/module/newmodelapi/model/respon/newnama.dart';
import '../view/newmodelapi_view.dart';

class NewmodelapiController extends GetxController {
  NewmodelapiView? view;
  @override
  void onInit() {
    getnama2();
    super.onInit();
  }

  List<Datum> item = <Datum>[];
  Future<List<Datum>> getnama2() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    final namaNew = NamaNew.fromMap(response.data);
    item = namaNew.data;

    update();
    return namaNew.data;
  }
}
