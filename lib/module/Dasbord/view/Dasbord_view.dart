import 'package:flutter/material.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class DasbordView extends StatelessWidget {
  const DasbordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DasbordController>(
      init: DasbordController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: const [],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(() => const GetbuilderView());
                      },
                      child: const Text("Get Builder"),
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
                        Get.to(() => const GetobxView());
                      },
                      child: const Text("OBX"),
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
                        Get.to(() => const ApitanpamodelView());
                      },
                      child: const Text("GET API TANPA MODEL obx"),
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
                        Get.to(() => GetbuilderapiView());
                      },
                      child: const Text("GET API TANPA MODEL getbulder"),
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
                        Get.to(() => const ObxapimodelView());
                      },
                      child: const Text("GET API DENGAN MODEL OBX"),
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
                        Get.to(() => const GetbuilderapimodelView());
                      },
                      child: const Text("GET API DENGAN MODEL BUILDER"),
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
                        Get.to(() => const NewmodelapiView());
                      },
                      child: const Text("GET API DENGAN MODEL BUILDER"),
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
                          () => const Di1View(),
                        );
                      },
                      child: const Text("coba DI"),
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
                        Get.to(() => const ScanView());
                      },
                      child: const Text("Scan"),
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
                        Get.to(() => const ArgumenView());
                      },
                      child: const Text("Argumen"),
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
