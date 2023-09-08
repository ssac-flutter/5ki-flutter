import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_event.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String userName,
    required int sectionNumber,
    String? depart,
    String? arrive,
    HomeEvent? lastEvent,
    @Default([]) List<Address> recentlyAddresses,
    @Default([]) List<Address> searchResultAddresses,
  }) = _HomeState;
}
