import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rate_exchange_app/domain/model/rate.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<Rate> rates,
    @Default(false) bool isLoading,
    @Default(0) num baseMoney,
    @Default(0) num targetMoney,
    @Default('USD') String baseCode,
    @Default('KRW') String targetCode,
    DateTime? lastUpdateTime,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}