import 'dart:convert';
import 'package:dinamica_landing_page/data/models/places_model/places_model.dart';
import 'package:http/http.dart' as http;

class DepositMoneyRepository {
  Future<PlacesModelDM> getDepositMoney() async {
    PlacesModelDM placesModelDM;

    try {
      //request to api
      var url = Uri.https('cost.dinamicaonline.com.ar', 'api/v1/deposit_money');
      var response = await http.post(url, headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      });
      print(response.body);

      Map data = jsonDecode(utf8.decode(response.bodyBytes));
      print(data);

      placesModelDM = PlacesModelDM.fromJson(data as Map<String, dynamic>);

      //simulation
      /* placesModelDM = PlacesModelDM.fromJson({
        "places": [
          {
            "name": "PagoFacil",
            "minDepositAmount": 500.00,
            "maxDepositAmount": 100000.00,
            "minDepositCommision": 0.00,
            "depositCommisionPercent": 0.000,
            "maxDepositCommisionZero": 25000.00,
            "maxDepositCount": 0
          }
        ]
      }); */

      return placesModelDM;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
