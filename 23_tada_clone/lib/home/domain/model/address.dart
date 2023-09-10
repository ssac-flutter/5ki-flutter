import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String title,
    required String address,
    (double, double)? location,
  }) = _Address;
}
