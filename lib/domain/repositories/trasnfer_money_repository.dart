import 'dart:convert';
import 'package:dinamica_landing_page/data/models/transfer_money_model/transfer_money_model.dart';
import 'package:http/http.dart' as http;

class TransferMoneyRepository {
  Future<TransferMoneyModel> getTransferMoney() async {
    TransferMoneyModel transferMoneyModel;

    try {
      //request to api
      var url =
          Uri.https('cost.dinamicaonline.com.ar', 'api/v1/transfer_money');
      var response = await http.post(url, headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      });

      Map data = jsonDecode(response.body);

      transferMoneyModel =
          TransferMoneyModel.fromJson(data as Map<String, dynamic>);

      //Simulation (bad)
      /* placesModelTM = PlacesModelTM.fromJson({
        "trdSc1Max": 500.00,
        "trdScMesMaxImpo": 100.00,
        "trdScMesMaxCant": 3,
        "trdPorcentaje": 21.000,
        "trdCostoMinimo": 200.00,
        "treSc1Max": 500.00,
        "treScMesMaxImpo": 100.00,
        "treScMesMaxCant": 3,
        "trePorcentaje": 21.000,
        "treCostoMinimo": 200.00
      }); */

      return transferMoneyModel;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
