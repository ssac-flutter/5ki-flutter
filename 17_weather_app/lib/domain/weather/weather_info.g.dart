// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherInfo _$$_WeatherInfoFromJson(Map<String, dynamic> json) =>
    _$_WeatherInfo(
      time: DateTime.parse(json['time'] as String),
      temperature: json['temperature'] as num,
      weatherType:
          WeatherType.fromJson(json['weatherType'] as Map<String, dynamic>),
      humidity: json['humidity'] as num,
      windSpeed: json['windSpeed'] as num,
      pressure: json['pressure'] as num,
    );

Map<String, dynamic> _$$_WeatherInfoToJson(_$_WeatherInfo instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature': instance.temperature,
      'weatherType': instance.weatherType,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'pressure': instance.pressure,
    };
