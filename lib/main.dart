import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihangetx/module/Dasbord/view/Dasbord_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DasbordView(),
    ),
  );
}
