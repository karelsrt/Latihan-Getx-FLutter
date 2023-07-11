import 'package:flutter/material.dart';
import '../controller/getbuilderapimodel_controller.dart';
import 'package:latihangetx/core.dart';
import 'package:get/get.dart';

class GetbuilderapimodelView extends StatelessWidget {
  const GetbuilderapimodelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetbuilderapimodelController>(
      init: GetbuilderapimodelController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Getbuilderapimodel"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Builder(
                    builder: (context) {
                      return ListView.builder(
                        itemCount: controller.item.length,
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) {
                          var item = controller.item[index];
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  item.avatar,
                                ),
                              ),
                              title: Text("${item.firstName} ${item.lastName}"),
                              subtitle: Text(item.email),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
