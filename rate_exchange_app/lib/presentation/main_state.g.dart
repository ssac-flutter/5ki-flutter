// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainState _$$_MainStateFromJson(Map<String, dynamic> json) => _$_MainState(
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => Rate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      baseMoney: json['baseMoney'] as num? ?? 0,
      targetMoney: json['targetMoney'] as num? ?? 0,
      baseCode: json['baseCode'] as String? ?? 'KRW',
      targetCode: json['targetCode'] as String? ?? 'USD',
      lastUpdateTime: json['lastUpdateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateTime'] as String),
    );

Map<String, dynamic> _$$_MainStateToJson(_$_MainState instance) =>
    <String, dynamic>{
      'rates': instance.rates,
      'isLoading': instance.isLoading,
      'baseMoney': instance.baseMoney,
      'targetMoney': instance.targetMoney,
      'baseCode': instance.baseCode,
      'targetCode': instance.targetCode,
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
    };
