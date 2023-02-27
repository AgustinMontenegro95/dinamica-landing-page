// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_money_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepositMoneyModel _$$_DepositMoneyModelFromJson(Map<String, dynamic> json) =>
    _$_DepositMoneyModel(
      name: json['name'] as String,
      minDepositAmount: (json['minDepositAmount'] as num).toDouble(),
      maxDepositAmount: (json['maxDepositAmount'] as num).toDouble(),
      minDepositCommision: (json['minDepositCommision'] as num).toDouble(),
      depositCommisionPercent:
          (json['depositCommisionPercent'] as num).toDouble(),
      maxDepositCommisionZero:
          (json['maxDepositCommisionZero'] as num).toDouble(),
      maxDepositCount: json['maxDepositCount'] as int,
    );

Map<String, dynamic> _$$_DepositMoneyModelToJson(
        _$_DepositMoneyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'minDepositAmount': instance.minDepositAmount,
      'maxDepositAmount': instance.maxDepositAmount,
      'minDepositCommision': instance.minDepositCommision,
      'depositCommisionPercent': instance.depositCommisionPercent,
      'maxDepositCommisionZero': instance.maxDepositCommisionZero,
      'maxDepositCount': instance.maxDepositCount,
    };
