// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatesResult _$$_RatesResultFromJson(Map<String, dynamic> json) =>
    _$_RatesResult(
      lastUpdateTime: DateTime.parse(json['lastUpdateTime'] as String),
      nextUpdateTime: DateTime.parse(json['nextUpdateTime'] as String),
      rates: (json['rates'] as List<dynamic>)
          .map((e) => Rate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RatesResultToJson(_$_RatesResult instance) =>
    <String, dynamic>{
      'lastUpdateTime': instance.lastUpdateTime.toIso8601String(),
      'nextUpdateTime': instance.nextUpdateTime.toIso8601String(),
      'rates': instance.rates,
    };
