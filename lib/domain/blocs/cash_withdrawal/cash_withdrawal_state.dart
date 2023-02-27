part of 'cash_withdrawal_bloc.dart';

@freezed
class CashWithdrawalState with _$CashWithdrawalState {
  const factory CashWithdrawalState.initial() = _Initial;
  const factory CashWithdrawalState.loading() = _Loading;
  const factory CashWithdrawalState.loaded({PlacesModelCW? placesModelCW}) =
      _Loaded;
}
