import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state = const HomeState(
    section: HomeSection.first,
    userName: '오준석',
    depart: '현위치',
    currentPlaceName: '현위치 : 롯데 아파트',
    recentlyAddresses: [
      Address(
        title: '문래역 [2호선]',
        address: '서울 영등포구 문래동3가 68-1',
      )
    ],
  );

  HomeState get state => _state;

  void onEvent(HomeEvent event) async {
    switch (event) {
      case DepartClick():
        log('DepartClick');
        _state = state.copyWith(lastEvent: event);
      case ArriveClick():
        log('ArriveClick');
        _state = state.copyWith(lastEvent: event);
      case HistoryClick():
        log('HistoryClick');
      case ChangeSection():
        log('ChangeSection : ${event.section}');
        _state = state.copyWith(section: event.section);
        notifyListeners();
      case GetLocation():
        log('GetLocation : ${event.location}');
        _state = state.copyWith(currentPosition: event.location);
      case DepartChange():
        log('DepartChange : ${event.address}');
      case ArriveChange():
        log('ArriveChange : ${event.query}');

        if (event.query.isEmpty) {
          _state = state.copyWith(
            searchStatus: SearchStatus.none,
          );
          notifyListeners();
        } else if (event.query.isNotEmpty) {
          _state = state.copyWith(
            searchStatus: SearchStatus.loading,
          );
          notifyListeners();

          await Future.delayed(const Duration(seconds: 1));

          _state = state.copyWith(
            searchStatus: SearchStatus.success,
            searchResultAddresses: [
              const Address(
                title: '수원역',
                address: '서울 영등포구 문래동3가 68-1',
              )
            ],
          );
          notifyListeners();
        }
    }
  }
}
