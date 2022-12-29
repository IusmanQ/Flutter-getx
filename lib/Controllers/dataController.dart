import 'package:get/get.dart';
import 'package:getx_flutter/api_service/api_service.dart';
import 'package:getx_flutter/models/usa_data.dart';

class DataController extends GetxController {

  var isLoading = true.obs;
  var usaData = UsaData().obs;

  @override
  void onInit() {
    fetchData();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchData() async {
    try{
      isLoading(true);
      var data = await ApiService.fetchData();
      if(data != null){
        usaData.value = data;
      }
    }
    finally {
      isLoading(false);
    }
  }
}