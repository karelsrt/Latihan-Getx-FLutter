import 'package:flutter/material.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class ArgumenView extends StatelessWidget {
  const ArgumenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ArgumenController>(
      init: ArgumenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Argumen"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    controller.a.toString(),
                    style: const TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(
                          () => const Argumen2View(),
                          arguments: controller.a,
                        );
                      },
                      child: const Text("Argumen 2"),
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
