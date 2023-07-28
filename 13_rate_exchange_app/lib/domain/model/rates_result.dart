import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rate_exchange_app/domain/model/rate.dart';

part 'rates_result.freezed.dart';

part 'rates_result.g.dart';

@freezed
class RatesResult with _$RatesResult {
  const factory RatesResult({
    required DateTime lastUpdateTime,
    required DateTime nextUpdateTime,
    required List<Rate> rates,
  }) = _RatesResult;

  factory RatesResult.fromJson(Map<String, Object?> json) => _$RatesResultFromJson(json);
}