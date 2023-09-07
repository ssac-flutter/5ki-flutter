// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      userName: json['userName'] as String,
      depart: json['depart'] as String?,
      arrive: json['arrive'] as String?,
      recentlyAddresses: (json['recentlyAddresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentLocation: _$recordConvertNullable(
        json['currentLocation'],
        ($jsonValue) => (
          ($jsonValue[r'$1'] as num).toDouble(),
          ($jsonValue[r'$2'] as num).toDouble(),
        ),
      ),
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'depart': instance.depart,
      'arrive': instance.arrive,
      'recentlyAddresses': instance.recentlyAddresses,
      'currentLocation': instance.currentLocation == null
          ? null
          : {
              r'$1': instance.currentLocation!.$1,
              r'$2': instance.currentLocation!.$2,
            },
    };

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map<String, dynamic>);
