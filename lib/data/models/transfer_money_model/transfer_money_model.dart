import 'package:freezed_annotation/freezed_annotation.dart';
part 'transfer_money_model.freezed.dart';
part 'transfer_money_model.g.dart';

@Freezed()
class TransferMoneyModel with _$TransferMoneyModel {
  const factory TransferMoneyModel({
    /* required String trdSc1Max,
    required String trdScMesMaxImpo,
    required String trdScMesMaxCant,
    required String trdPorcentaje,
    required String trdCostoMinimo,
    required String treSc1Max,
    required String treScMesMaxImpo,
    required String treScMesMaxCant,
    required String trePorcentaje,
    required String treCostoMinimo, */
    required String TRD_SC_1MAX,
    required String TRD_SC_MES_MAX_IMPO,
    required String TRD_SC_MES_MAX_CANT,
    required String TRD_PORCENTAJE,
    required String TRD_COSTO_MINIMO,
    required String TRE_SC_1MAX,
    required String TRE_SC_MES_MAX_IMPO,
    required String TRE_SC_MES_MAX_CANT,
    required String TRE_PORCENTAJE,
    required String TRE_COSTO_MINIMO,
  }) = _TransferMoneyModel;

  factory TransferMoneyModel.fromJson(Map<String, dynamic> json) =>
      _$TransferMoneyModelFromJson(json);
}

/* // To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome(
      {required this.trdSc1Max,
      required this.trdScMesMaxImpo,
      required this.trdScMesMaxCant,
      required this.trdPorcentaje,
      required this.trdCostoMinimo,
      required this.treSc1Max,
      required this.treScMesMaxImpo,
      required this.treScMesMaxCant,
      required this.trePorcentaje,
      required this.treCostoMinimo});

  double trdSc1Max;
  double trdScMesMaxImpo;
  int trdScMesMaxCant;
  double trdPorcentaje;
  double trdCostoMinimo;
  double treSc1Max;
  double treScMesMaxImpo;
  int treScMesMaxCant;
  double trePorcentaje;
  double treCostoMinimo;

  Welcome copyWith(
          {double? trdSc1Max,
          double? trdScMesMaxImpo,
          int? trdScMesMaxCant,
          double? trdPorcentaje,
          double? trdCostoMinimo,
          double? treSc1Max,
          double? treScMesMaxImpo,
          int? treScMesMaxCant,
          double? trePorcentaje,
          double? treCostoMinimo}) =>
      Welcome(
          trdSc1Max: trdSc1Max ?? this.trdSc1Max,
          trdScMesMaxImpo: trdScMesMaxImpo ?? this.trdScMesMaxImpo,
          trdScMesMaxCant: trdScMesMaxCant ?? this.trdScMesMaxCant,
          trdPorcentaje: trdPorcentaje ?? this.trdPorcentaje,
          trdCostoMinimo: trdCostoMinimo ?? this.trdCostoMinimo,
          treSc1Max: treSc1Max ?? this.treSc1Max,
          treScMesMaxImpo: treScMesMaxImpo ?? this.treScMesMaxImpo,
          treScMesMaxCant: treScMesMaxCant ?? this.treScMesMaxCant,
          trePorcentaje: trePorcentaje ?? this.trePorcentaje,
          treCostoMinimo: treCostoMinimo ?? this.treCostoMinimo);

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
      trdSc1Max: json["TRD_SC_1MAX"],
      trdScMesMaxImpo: json["TRD_SC_MES_MAX_IMPO"],
      trdScMesMaxCant: json["TRD_SC_MES_MAX_CANT"],
      trdPorcentaje: json["TRD_PORCENTAJE"],
      trdCostoMinimo: json["TRD_COSTO_MINIMO"],
      treSc1Max: json["TRE_SC_1MAX"],
      treScMesMaxImpo: json["TRE_SC_MES_MAX_IMPO"],
      treScMesMaxCant: json["TRE_SC_MES_MAX_CANT"],
      trePorcentaje: json["TRE_PORCENTAJE"],
      treCostoMinimo: json["TRE_COSTO_MINIMO"]);

  Map<String, dynamic> toJson() => {
        "TRD_SC_1MAX": trdSc1Max,
        "TRD_SC_MES_MAX_IMPO": trdScMesMaxImpo,
        "TRD_SC_MES_MAX_CANT": trdScMesMaxCant,
        "TRD_PORCENTAJE": trdPorcentaje,
        "TRD_COSTO_MINIMO": trdCostoMinimo,
        "TRE_SC_1MAX": treSc1Max,
        "TRE_SC_MES_MAX_IMPO": treScMesMaxImpo,
        "TRE_SC_MES_MAX_CANT": treScMesMaxCant,
        "TRE_PORCENTAJE": trePorcentaje,
        "TRE_COSTO_MINIMO": treCostoMinimo
      };
} */

/* 
Estructura JSON
{
  "TRD_SC_1MAX": 500.00,
  "TRD_SC_MES_MAX_IMPO": 100.00,
  "TRD_SC_MES_MAX_CANT": 3,
  "TRD_PORCENTAJE": 21.000,
  "TRD_COSTO_MINIMO": 200.00,
  "TRE_SC_1MAX": 500.00,
  "TRE_SC_MES_MAX_IMPO": 100.00,
  "TRE_SC_MES_MAX_CANT": 3,
  "TRE_PORCENTAJE": 21.000,
  "TRE_COSTO_MINIMO": 200.00
}
 */