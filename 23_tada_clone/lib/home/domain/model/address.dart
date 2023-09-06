import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';

part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String title,
    required String address,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) => _$AddressFromJson(json);
}