import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rate_exchange_app/core/result.dart';
import 'package:rate_exchange_app/domain/use_case/calculate_rate_use_case.dart';
import 'package:rate_exchange_app/domain/use_case/get_rates_use_case.dart';
import 'package:rate_exchange_app/presentation/main_event.dart';
import 'package:rate_exchange_app/presentation/main_state.dart';
import 'package:rate_exchange_app/presentation/main_ui_event.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetRatesUseCase _getRatesUseCase;
  final CalculateRateUseCase _calculateRateUseCase;

  MainState _state = const MainState();

  MainState get state => _state;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getRatesUseCase, this._calculateRateUseCase) {
    _getRates();
  }

  void onEvent(MainEvent event) {
    switch (event) {
      case LoadData():
        _getRates();
      case InputBaseMoney():
        _state = state.copyWith(
          baseMoney: event.money,
          targetMoney: _calculateRateUseCase.execute(
            rates: state.rates,
            baseMoney: event.money,
            baseCode: state.baseCode,
            targetCode: state.targetCode,
          ),
        );
        notifyListeners();
      case TargetBaseMoney():
        _state = state.copyWith(
          baseMoney: event.money,
          targetMoney: _calculateRateUseCase.execute(
            rates: state.rates,
            baseMoney: event.money,
            baseCode: state.targetCode,
            targetCode: state.baseCode,
          ),
        );
        notifyListeners();
      case SelectBaseCode():
        _state = state.copyWith(
          baseCode: event.code,
          baseMoney: _calculateRateUseCase.execute(
            rates: state.rates,
            baseMoney: state.targetMoney,
            baseCode: event.code,
            targetCode: state.baseCode,
          ),
        );
        notifyListeners();
      case SelectTargetCode():
        _state = state.copyWith(
          targetCode: event.code,
          targetMoney: _calculateRateUseCase.execute(
            rates: state.rates,
            baseMoney: state.baseMoney,
            baseCode: state.baseCode,
            targetCode: event.code,
          ),
        );
        notifyListeners();
    }

    _eventController
        .add(MainUiEvent.updateValue(state.baseMoney, state.targetMoney));
  }

  void _getRates() async {
    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final result = await _getRatesUseCase.execute();

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          rates: data.rates,
          isLoading: false,
        );
        notifyListeners();
      case Error(:final e):
        print(e);
    }
  }
}
