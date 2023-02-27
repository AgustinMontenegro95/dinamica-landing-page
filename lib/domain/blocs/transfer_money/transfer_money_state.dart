part of 'transfer_money_bloc.dart';

@freezed
class TransferMoneyState with _$TransferMoneyState {
  const factory TransferMoneyState.initial() = _Initial;
  const factory TransferMoneyState.loading() = _Loading;
  const factory TransferMoneyState.loaded(
      {TransferMoneyModel? transferMoneyModel}) = _Loaded;
}
