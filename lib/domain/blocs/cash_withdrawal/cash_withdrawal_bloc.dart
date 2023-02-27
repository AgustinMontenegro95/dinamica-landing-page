import 'package:bloc/bloc.dart';
import 'package:dinamica_landing_page/data/models/places_model/places_model.dart';
import 'package:dinamica_landing_page/domain/repositories/cash_withdrawal_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_withdrawal_event.dart';
part 'cash_withdrawal_state.dart';
part 'cash_withdrawal_bloc.freezed.dart';

class CashWithdrawalBloc
    extends Bloc<CashWithdrawalEvent, CashWithdrawalState> {
  final CashWithdrawalRepository cashWithdrawalRepository;
  CashWithdrawalBloc({required this.cashWithdrawalRepository})
      : super(const _Initial()) {
    on<CashWithdrawalEvent>(_onCashWithdrawalEvent);
  }
  Future<void> _onCashWithdrawalEvent(
      CashWithdrawalEvent event, Emitter<CashWithdrawalState> emit) {
    return event.when(get: () async {
      emit(const _Loading());
      try {
        final placesModelCW =
            await cashWithdrawalRepository.getCashWithdrawal();
        emit(_Loaded(placesModelCW: placesModelCW));
      } catch (e) {
        debugPrint("error$e");
      }
    });
  }
}
