import 'package:bloc/bloc.dart';
import 'package:dinamica_landing_page/data/models/places_model/places_model.dart';
import 'package:dinamica_landing_page/domain/repositories/deposit_money_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deposit_money_event.dart';
part 'deposit_money_state.dart';
part 'deposit_money_bloc.freezed.dart';

class DepositMoneyBloc extends Bloc<DepositMoneyEvent, DepositMoneyState> {
  final DepositMoneyRepository depositMoneyRepository;
  DepositMoneyBloc({required this.depositMoneyRepository})
      : super(const _Initial()) {
    on<DepositMoneyEvent>(_onDepositMoneyEvent);
  }
  Future<void> _onDepositMoneyEvent(
      DepositMoneyEvent event, Emitter<DepositMoneyState> emit) {
    return event.when(get: () async {
      emit(const _Loading());
      try {
        final placesModelDM = await depositMoneyRepository.getDepositMoney();
        emit(_Loaded(placesModelDM: placesModelDM));
      } catch (e) {
        debugPrint("error$e");
      }
    });
  }
}
