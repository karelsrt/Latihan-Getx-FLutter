import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controller/getbuilderapi_controller.dart';
import 'package:latihangetx/core.dart';

class GetbuilderapiView extends StatelessWidget {
  GetbuilderapiView({Key? key}) : super(key: key);
  //final _searchQuery = RxString('');

  final RxString _searchQuery = ''.obs;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetbuilderapiController>(
      init: GetbuilderapiController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Getbuilderapi"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    print("pickedDate: $pickedDate");

                    _searchQuery.value =
                        DateFormat('yyyy-MM-dd').format(pickedDate!);
                  },
                  child: Obx(() {
                    return TextFormField(
                      controller:
                          TextEditingController(text: _searchQuery.value),
                      maxLength: 20,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Birth date',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        suffixIcon: Icon(Icons.date_range),
                        helperText: "What's your name?",
                      ),
                      onChanged: (value) {},
                    );
                  }),
                ),
                const Text(
                  "Pakai Get BUilder",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                                  item['avatar'],
                                ),
                              ),
                              title: Text(
                                  "${item['first_name']} ${item['last_name']}"),
                              subtitle: Text(item['email']),
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
