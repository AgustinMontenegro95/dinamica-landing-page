import 'package:bloc/bloc.dart';
import 'package:dinamica_landing_page/data/models/transfer_money_model/transfer_money_model.dart';
import 'package:dinamica_landing_page/domain/repositories/trasnfer_money_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_money_event.dart';
part 'transfer_money_state.dart';
part 'transfer_money_bloc.freezed.dart';

class TransferMoneyBloc extends Bloc<TransferMoneyEvent, TransferMoneyState> {
  final TransferMoneyRepository transferMoneyRepository;
  TransferMoneyBloc({required this.transferMoneyRepository})
      : super(const _Initial()) {
    on<TransferMoneyEvent>(_onTransferMoneyEvent);
  }
  Future<void> _onTransferMoneyEvent(
      TransferMoneyEvent event, Emitter<TransferMoneyState> emit) {
    return event.when(get: () async {
      emit(const _Loading());
      try {
        final transferMoneyModel =
            await transferMoneyRepository.getTransferMoney();
        emit(_Loaded(transferMoneyModel: transferMoneyModel));
      } catch (e) {
        debugPrint("error$e");
      }
    });
  }
}
