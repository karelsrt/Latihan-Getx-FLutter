import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihangetx/core.dart';

class ApitanpamodelView extends StatelessWidget {
  const ApitanpamodelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApitanpamodelController>(
      init: ApitanpamodelController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Apitanpamodel"),
            actions: [
              IconButton(
                onPressed: () {
                  controller.getData();
                },
                icon: const Icon(
                  Icons.refresh,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              const Text(
                "Tanpa Model",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(() {
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 200,
                  ),
                  child: ListView.builder(
                    itemCount: controller.items.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var item = controller.items[index];
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => const DetailapitanpamodelView(),
                            arguments: item,
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                item['avatar'],
                              ),
                            ),
                            title: Text(
                                "${item['first_name']} ${item['last_name']}"),
                            subtitle: Text(item['email']),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {},
                  child: const Text("Checkout"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
