import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/use_case/get_current_weather_data_use_case.dart';
import 'package:weather_app/presentation/main_state.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetCurrentWeatherDataUseCase _getCurrentWeatherDataUseCase;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel(this._getCurrentWeatherDataUseCase) {
    _getCurrentWeather();
  }

  Future<void> _getCurrentWeather() async {
    final result = await _getCurrentWeatherDataUseCase.execute();

    switch (result) {
      case Success():
        _state = state.copyWith(currentWeatherInfo: result.data);
      case Fail():
        print(result.e);
    }
    notifyListeners();
  }
}
