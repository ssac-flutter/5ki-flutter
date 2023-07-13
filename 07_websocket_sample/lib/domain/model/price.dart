import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'price.freezed.dart';

part 'price.g.dart';

@freezed
class Price with _$Price {
  const factory Price({
    required String e,
    required num E,
    required num a,
    required String p,
    required String q,
    required num f,
    required num l,
    required num T,
    required bool m,
  }) = _Price;

  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}