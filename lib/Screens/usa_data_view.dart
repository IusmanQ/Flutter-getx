import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/Controllers/dataController.dart';

class USADataView extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX API'),
      ),
      body: Obx(() {
        if(dataController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else {
          print(dataController.usaData.value.data);
          return Text('Hi');
        }
      })
    );
  }
}
