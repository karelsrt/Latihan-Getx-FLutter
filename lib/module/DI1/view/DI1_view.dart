import 'package:flutter/material.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class Di1View extends StatelessWidget {
  const Di1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Di1Controller>(
      init: Di1Controller(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Di1"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.coba();
                    },
                    child: const Text("Save"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Get.offAll(() => const DasbordView());
                    },
                    child: const Text("Hapus semua"),
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
