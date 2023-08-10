import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_type.freezed.dart';

part 'weather_type.g.dart';

@freezed
class WeatherType with _$WeatherType {
  const factory WeatherType({
    required String status,
    required String iconName,
  }) = _WeatherType;

  factory WeatherType.fromJson(Map<String, Object?> json) => _$WeatherTypeFromJson(json);
}