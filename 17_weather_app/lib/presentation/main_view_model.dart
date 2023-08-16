import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/use_case/get_current_weather_data_use_case.dart';
import 'package:weather_app/domain/use_case/get_daily_temperature_use_case.dart';
import 'package:weather_app/domain/use_case/get_today_temperature_use_case.dart';
import 'package:weather_app/presentation/main_state.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetCurrentWeatherDataUseCase _getCurrentWeatherDataUseCase;
  final GetDailyTemperatureUseCase _getDailyWeatherDataUseCase;
  final GetTodayTemperatureUseCase _getTodayTemperatureUseCase;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel(
    this._getCurrentWeatherDataUseCase,
    this._getDailyWeatherDataUseCase,
    this._getTodayTemperatureUseCase,
  ) {
    _getCurrentWeather();
    _getWeeklyWeather();
    _getTodayWeather();
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

  Future<void> _getWeeklyWeather() async {
    final result = await _getDailyWeatherDataUseCase.execute();

    switch (result) {
      case Success():
        _state = state.copyWith(dailyWeatherInfoList: result.data);
      case Fail():
        print(result.e);
    }
    notifyListeners();
  }

  Future<void> _getTodayWeather() async {
    final result = await _getTodayTemperatureUseCase.execute();

    switch (result) {
      case Success():
        _state = state.copyWith(todayWeatherInfoList: result.data);
      case Fail():
        print(result.e);
    }
    notifyListeners();
  }
}
