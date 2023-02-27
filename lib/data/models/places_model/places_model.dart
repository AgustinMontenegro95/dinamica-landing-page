import 'package:dinamica_landing_page/data/models/cash_withdrawal_model/cash_withdrawal_model.dart';
import 'package:dinamica_landing_page/data/models/deposit_money_model/deposit_money_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_model.freezed.dart';
part 'places_model.g.dart';

@Freezed()
class PlacesModelDM with _$PlacesModelDM {
  const factory PlacesModelDM({
    required List<DepositMoneyModel> places,
  }) = _PlacesModelDM;

  factory PlacesModelDM.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelDMFromJson(json);
}

@Freezed()
class PlacesModelCW with _$PlacesModelCW {
  const factory PlacesModelCW({
    required List<CashWithdrawalModel> places,
  }) = _PlacesModelCW;

  factory PlacesModelCW.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelCWFromJson(json);
}
