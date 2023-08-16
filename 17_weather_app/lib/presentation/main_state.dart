import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    WeatherInfo? currentWeatherInfo,
    @Default([]) List<WeatherInfo> dailyWeatherInfoList,
    @Default([]) List<WeatherInfo> todayWeatherInfoList,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}