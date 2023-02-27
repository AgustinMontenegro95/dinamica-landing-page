// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesModelDM _$$_PlacesModelDMFromJson(Map<String, dynamic> json) =>
    _$_PlacesModelDM(
      places: (json['places'] as List<dynamic>)
          .map((e) => DepositMoneyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlacesModelDMToJson(_$_PlacesModelDM instance) =>
    <String, dynamic>{
      'places': instance.places,
    };

_$_PlacesModelCW _$$_PlacesModelCWFromJson(Map<String, dynamic> json) =>
    _$_PlacesModelCW(
      places: (json['places'] as List<dynamic>)
          .map((e) => CashWithdrawalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlacesModelCWToJson(_$_PlacesModelCW instance) =>
    <String, dynamic>{
      'places': instance.places,
    };
