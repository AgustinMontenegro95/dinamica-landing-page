import 'package:freezed_annotation/freezed_annotation.dart';
part 'cash_withdrawal_model.freezed.dart';
part 'cash_withdrawal_model.g.dart';

@Freezed()
class CashWithdrawalModel with _$CashWithdrawalModel {
  const factory CashWithdrawalModel({
    required String name,
    required double minExtractionAmount,
    required double minExtractionCommision,
    required double extractionCommisionPercent,
    required double maxExtractionAmount,
    required double maxExtractionCommisionZero,
    required int maxExtractionCount,
  }) = _CashWithdrawalModel;

  factory CashWithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$CashWithdrawalModelFromJson(json);
}

/* import 'dart:convert';

CashWithdrawal cashWithdrawalFromJson(String str) =>
    CashWithdrawal.fromJson(json.decode(str));

String cashWithdrawalToJson(CashWithdrawal data) => json.encode(data.toJson());

class CashWithdrawal {
  CashWithdrawal({
    required this.nombre,
    required this.minExtractionAmount,
    required this.minExtractionCommision,
    required this.extractionCommisionPercent,
    required this.maxExtractionAmount,
    required this.maxExtractionCommisionZero,
    required this.maxExtractionCount,
  });

  String nombre;
  double minExtractionAmount;
  double minExtractionCommision;
  double extractionCommisionPercent;
  double maxExtractionAmount;
  double maxExtractionCommisionZero;
  int maxExtractionCount;

  CashWithdrawal copyWith({
    String? nombre,
    double? minExtractionAmount,
    double? minExtractionCommision,
    double? extractionCommisionPercent,
    double? maxExtractionAmount,
    double? maxExtractionCommisionZero,
    int? maxExtractionCount,
  }) =>
      CashWithdrawal(
        nombre: nombre ?? this.nombre,
        minExtractionAmount: minExtractionAmount ?? this.minExtractionAmount,
        minExtractionCommision:
            minExtractionCommision ?? this.minExtractionCommision,
        extractionCommisionPercent:
            extractionCommisionPercent ?? this.extractionCommisionPercent,
        maxExtractionAmount: maxExtractionAmount ?? this.maxExtractionAmount,
        maxExtractionCommisionZero:
            maxExtractionCommisionZero ?? this.maxExtractionCommisionZero,
        maxExtractionCount: maxExtractionCount ?? this.maxExtractionCount,
      );

  factory CashWithdrawal.fromJson(Map<String, dynamic> json) => CashWithdrawal(
        nombre: json["nombre"],
        minExtractionAmount: json["minExtractionAmount"],
        minExtractionCommision: json["minExtractionCommision"],
        extractionCommisionPercent: json["extractionCommisionPercent"],
        maxExtractionAmount: json["maxExtractionAmount"],
        maxExtractionCommisionZero: json["maxExtractionCommisionZero"],
        maxExtractionCount: json["maxExtractionCount"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "minExtractionAmount": minExtractionAmount,
        "minExtractionCommision": minExtractionCommision,
        "extractionCommisionPercent": extractionCommisionPercent,
        "maxExtractionAmount": maxExtractionAmount,
        "maxExtractionCommisionZero": maxExtractionCommisionZero,
        "maxExtractionCount": maxExtractionCount,
      };
} */


/*
Estructura JSON
{
  "name": "Rapipago",
  "minExtractionAmount": 500.00,
  "minExtractionCommision": 100.00,
  "extractionCommisionPercent": 1.000,
  "maxExtractionAmount": 20000.000,
  "maxExtractionCommisionZero": 0.00,
  "maxExtractionCount": 0
}
 */