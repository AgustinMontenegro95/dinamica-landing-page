// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CashWithdrawalModel _$$_CashWithdrawalModelFromJson(
        Map<String, dynamic> json) =>
    _$_CashWithdrawalModel(
      name: json['name'] as String,
      minExtractionAmount: (json['minExtractionAmount'] as num).toDouble(),
      minExtractionCommision:
          (json['minExtractionCommision'] as num).toDouble(),
      extractionCommisionPercent:
          (json['extractionCommisionPercent'] as num).toDouble(),
      maxExtractionAmount: (json['maxExtractionAmount'] as num).toDouble(),
      maxExtractionCommisionZero:
          (json['maxExtractionCommisionZero'] as num).toDouble(),
      maxExtractionCount: json['maxExtractionCount'] as int,
    );

Map<String, dynamic> _$$_CashWithdrawalModelToJson(
        _$_CashWithdrawalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'minExtractionAmount': instance.minExtractionAmount,
      'minExtractionCommision': instance.minExtractionCommision,
      'extractionCommisionPercent': instance.extractionCommisionPercent,
      'maxExtractionAmount': instance.maxExtractionAmount,
      'maxExtractionCommisionZero': instance.maxExtractionCommisionZero,
      'maxExtractionCount': instance.maxExtractionCount,
    };
