import 'dart:convert';
import 'package:dinamica_landing_page/data/models/places_model/places_model.dart';
import 'package:http/http.dart' as http;

class CashWithdrawalRepository {
  Future<PlacesModelCW> getCashWithdrawal() async {
    PlacesModelCW placesModelCW;

    try {
      //request to api
      var url =
          Uri.https('cost.dinamicaonline.com.ar', 'api/v1/cash_withdrawal');
      var response = await http.post(url, headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      });
      print(response.body);

      Map data = jsonDecode(utf8.decode(response.bodyBytes));
      print(data);

      placesModelCW = PlacesModelCW.fromJson(data as Map<String, dynamic>);

      //simulation
      /* placesModelCW = PlacesModelCW.fromJson({
        "name": "Rapipago",
        "minExtractionAmount": 500.00,
        "minExtractionCommision": 100.00,
        "extractionCommisionPercent": 1.000,
        "maxExtractionAmount": 20000.000,
        "maxExtractionCommisionZero": 0.00,
        "maxExtractionCount": 0
      }); */

      return placesModelCW;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
