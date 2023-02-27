import 'package:freezed_annotation/freezed_annotation.dart';
part 'deposit_money_model.freezed.dart';
part 'deposit_money_model.g.dart';

@Freezed()
class DepositMoneyModel with _$DepositMoneyModel {
  const factory DepositMoneyModel({
    required String name,
    required double minDepositAmount,
    required double maxDepositAmount,
    required double minDepositCommision,
    required double depositCommisionPercent,
    required double maxDepositCommisionZero,
    required int maxDepositCount,
  }) = _DepositMoneyModel;

  factory DepositMoneyModel.fromJson(Map<String, dynamic> json) =>
      _$DepositMoneyModelFromJson(json);
}

/* import 'dart:convert';

DepositMoney depositMoneyFromJson(String str) =>
    DepositMoney.fromJson(json.decode(str));

String depositMoneyToJson(DepositMoney data) => json.encode(data.toJson());

class DepositMoney {
  DepositMoney({
    required this.nombre,
    required this.minDepositAmount,
    required this.maxDepositAmount,
    required this.minDepositCommision,
    required this.depositCommisionPercent,
    required this.maxDepositCommisionZero,
    required this.maxDepositCount,
  });

  String nombre;
  double minDepositAmount;
  double maxDepositAmount;
  double minDepositCommision;
  double depositCommisionPercent;
  double maxDepositCommisionZero;
  int maxDepositCount;

  DepositMoney copyWith({
    String? nombre,
    double? minDepositAmount,
    double? maxDepositAmount,
    double? minDepositCommision,
    double? depositCommisionPercent,
    double? maxDepositCommisionZero,
    int? maxDepositCount,
  }) =>
      DepositMoney(
        nombre: nombre ?? this.nombre,
        minDepositAmount: minDepositAmount ?? this.minDepositAmount,
        maxDepositAmount: maxDepositAmount ?? this.maxDepositAmount,
        minDepositCommision: minDepositCommision ?? this.minDepositCommision,
        depositCommisionPercent:
            depositCommisionPercent ?? this.depositCommisionPercent,
        maxDepositCommisionZero:
            maxDepositCommisionZero ?? this.maxDepositCommisionZero,
        maxDepositCount: maxDepositCount ?? this.maxDepositCount,
      );

  factory DepositMoney.fromJson(Map<String, dynamic> json) => DepositMoney(
        nombre: json["nombre"],
        minDepositAmount: json["minDepositAmount"],
        maxDepositAmount: json["maxDepositAmount"],
        minDepositCommision: json["minDepositCommision"],
        depositCommisionPercent: json["depositCommisionPercent"],
        maxDepositCommisionZero: json["maxDepositCommisionZero"],
        maxDepositCount: json["maxDepositCount"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "minDepositAmount": minDepositAmount,
        "maxDepositAmount": maxDepositAmount,
        "minDepositCommision": minDepositCommision,
        "depositCommisionPercent": depositCommisionPercent,
        "maxDepositCommisionZero": maxDepositCommisionZero,
        "maxDepositCount": maxDepositCount,
      };
} */

/* 
Estructura JSON
{
  "name": "Rapipago",
  "minDepositAmount": 500.00,
  "maxDepositAmount": 100000.00,
  "minDepositCommision": 0.00,
  "depositCommisionPercent": 0.000,
  "maxDepositCommisionZero": 25000.00,
  "maxDepositCount": 0
}
 */