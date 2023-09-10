import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_event.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String userName,
    required HomeSection section,
    (double, double)? currentPosition,
    String? currentPlaceName,
    String? depart,
    String? arrive,
    HomeEvent? lastEvent,
    @Default([]) List<Address> recentlyAddresses,
    @Default([]) List<Address> searchResultAddresses,
    @Default(SearchStatus.none) SearchStatus searchStatus,
  }) = _HomeState;
}

enum HomeSection {
  first,
  second,
  third,
  forth,
}

enum SearchStatus {
  none,
  loading,
  success,
  error,
}
