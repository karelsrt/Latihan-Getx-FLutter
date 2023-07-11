import 'package:flutter/material.dart';
import '../controller/argumen2_controller.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class Argumen2View extends StatelessWidget {
  const Argumen2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Argumen2Controller>(
      init: Argumen2Controller(),
      builder: (controller) {
        controller.view = this;
        var data = Get.arguments;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Argumen2"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    controller.data,
                    style: const TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
