import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:latihangetx/core.dart';

class GetbuilderapimodelController extends GetxController {
  GetbuilderapimodelView? view;

  @override
  void onInit() {
    getNama();
    super.onInit();
  }

  List<Nama> item = <Nama>[];
  List<Nama> item2 = <Nama>[];
  final nama = Nama(
    id: 0,
    email: '',
    firstName: '',
    lastName: '',
    avatar: '',
  ).obs;

  getNama() async {
    try {
      var response = await Dio().get(
        "https://reqres.in/api/users",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      Map obj = response.data;
      if (response.statusCode == 200) {
        item.assignAll(
          List<Nama>.from(obj['data'].map((item) => Nama.fromMap(item))),
        );
        update();
      } else {
        throw Exception('gagal');
      }
    } on Exception catch (err) {
      print(err);
    }
  }
}
