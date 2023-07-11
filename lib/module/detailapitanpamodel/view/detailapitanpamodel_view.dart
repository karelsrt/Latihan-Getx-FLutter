import 'package:flutter/material.dart';
import '../controller/detailapitanpamodel_controller.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class DetailapitanpamodelView extends StatelessWidget {
  const DetailapitanpamodelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailapitanpamodelController>(
      init: DetailapitanpamodelController(),
      builder: (controller) {
        controller.view = this;
        var item = Get.arguments;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Detailapitanpamodel"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item['avatar']),
                        fit: BoxFit.scaleDown,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Nama = ${item['first_name'].toString()} ${item['last_name'].toString()} ",
                    style: const TextStyle(
                      fontSize: 19.0,
                    ),
                  ),
                  Text(
                    "Email = ${item['email'].toString()}  ",
                    style: const TextStyle(
                      fontSize: 19.0,
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
