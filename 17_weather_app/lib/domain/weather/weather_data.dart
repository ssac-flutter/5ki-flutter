import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

part 'weather_data.freezed.dart';

part 'weather_data.g.dart';

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
    required String timeUnit,
    required String temperatureUnit,
    required String weatherCodeUnit,
    required String humidityUnit,
    required String windSpeedUnit,
    required String pressureUnit,
    required String timezone,
    required num latitude,
    required num longitude,
    required List<WeatherInfo> weatherInfoList,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, Object?> json) => _$WeatherDataFromJson(json);
}