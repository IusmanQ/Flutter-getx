import 'package:getx_flutter/models/usa_data.dart';
import 'package:http/http.dart' as http;

class ApiService {

  static Uri url = Uri.https('datausa.io', 'api/data',
      {'drilldowns': 'National', 'measures': 'Population'});

  static var client = http.Client();

  static Future<UsaData> fetchData () async{
    var response = await client.get(url);
    if(response.statusCode == 200) {
      var jsonString = response.body;
      return usaDataFromJson(jsonString);
    }
  }
}