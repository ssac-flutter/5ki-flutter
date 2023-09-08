// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      userName: json['userName'] as String,
      sectionNumber: json['sectionNumber'] as int,
      depart: json['depart'] as String?,
      arrive: json['arrive'] as String?,
      recentlyAddresses: (json['recentlyAddresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchResultAddresses: (json['searchResultAddresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'sectionNumber': instance.sectionNumber,
      'depart': instance.depart,
      'arrive': instance.arrive,
      'recentlyAddresses': instance.recentlyAddresses,
      'searchResultAddresses': instance.searchResultAddresses,
    };
