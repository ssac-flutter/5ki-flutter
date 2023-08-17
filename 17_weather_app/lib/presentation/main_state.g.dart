// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainState _$$_MainStateFromJson(Map<String, dynamic> json) => _$_MainState(
      currentWeatherInfo: json['currentWeatherInfo'] == null
          ? null
          : WeatherInfo.fromJson(
              json['currentWeatherInfo'] as Map<String, dynamic>),
      dailyWeatherInfoList: (json['dailyWeatherInfoList'] as List<dynamic>?)
              ?.map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      todayWeatherInfoList: (json['todayWeatherInfoList'] as List<dynamic>?)
              ?.map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MainStateToJson(_$_MainState instance) =>
    <String, dynamic>{
      'currentWeatherInfo': instance.currentWeatherInfo,
      'dailyWeatherInfoList': instance.dailyWeatherInfoList,
      'todayWeatherInfoList': instance.todayWeatherInfoList,
    };
