// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherData _$$_WeatherDataFromJson(Map<String, dynamic> json) =>
    _$_WeatherData(
      timeUnit: json['timeUnit'] as String,
      temperatureUnit: json['temperatureUnit'] as String,
      weatherCodeUnit: json['weatherCodeUnit'] as String,
      humidityUnit: json['humidityUnit'] as String,
      windSpeedUnit: json['windSpeedUnit'] as String,
      pressureUnit: json['pressureUnit'] as String,
      timezone: json['timezone'] as String,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      weatherInfoList: (json['weatherInfoList'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDataToJson(_$_WeatherData instance) =>
    <String, dynamic>{
      'timeUnit': instance.timeUnit,
      'temperatureUnit': instance.temperatureUnit,
      'weatherCodeUnit': instance.weatherCodeUnit,
      'humidityUnit': instance.humidityUnit,
      'windSpeedUnit': instance.windSpeedUnit,
      'pressureUnit': instance.pressureUnit,
      'timezone': instance.timezone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'weatherInfoList': instance.weatherInfoList,
    };
