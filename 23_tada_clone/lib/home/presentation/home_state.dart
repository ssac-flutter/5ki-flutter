import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:tada_clone/home/domain/model/address.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String userName,
    required int sectionNumber,
    String? depart,
    String? arrive,
    @Default([]) List<Address> recentlyAddresses,
    @Default([]) List<Address> searchResultAddresses,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}
