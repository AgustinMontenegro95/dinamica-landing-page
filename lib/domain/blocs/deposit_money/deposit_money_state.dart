part of 'deposit_money_bloc.dart';

@freezed
class DepositMoneyState with _$DepositMoneyState {
  const factory DepositMoneyState.initial() = _Initial;
  const factory DepositMoneyState.loading() = _Loading;
  const factory DepositMoneyState.loaded({PlacesModelDM? placesModelDM}) =
      _Loaded;
}
