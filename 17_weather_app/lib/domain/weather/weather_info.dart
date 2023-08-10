import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/domain/weather/weather_type.dart';

part 'weather_info.freezed.dart';

part 'weather_info.g.dart';

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required DateTime time,
    required num temperature,
    required WeatherType weatherType,
    required num humidity,
    required num windSpeed,
    required num pressure,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, Object?> json) => _$WeatherInfoFromJson(json);
}