import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/obxapimodel_controller.dart';
import 'package:latihangetx/core.dart';

class ObxapimodelView extends StatelessWidget {
  const ObxapimodelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ObxapimodelController>(
      init: ObxapimodelController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Obxapimodel"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.refresh,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Obx(() {
                    return ListView.builder(
                      itemCount: controller.itemList.length,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = controller.itemList[index];
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                item.avatar,
                              ),
                            ),
                            title: Text('${item.firstName} ${item.lastName}'),
                            subtitle: Text(item.email),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
