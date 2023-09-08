import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state = const HomeState(
    sectionNumber: 1,
    userName: '오준석',
    depart: '현위치',
    arrive: '서울',
    recentlyAddresses: [
      Address(
        title: '문래역 [2호선]',
        address: '서울 영등포구 문래동3가 68-1',
      )
    ],
    searchResultAddresses: [
      Address(
        title: '수원역',
        address: '서울 영등포구 문래동3가 68-1',
      )
    ],
  );

  HomeState get state => _state;

  void onEvent(HomeEvent event) {
    switch (event) {
      case DepartClick():
        log('DepartClick');
      case ArriveClick():
        log('ArriveClick');
      case HistoryClick():
        log('HistoryClick');
      case ChangeSection():
        log('ChangeSection : ${event.sectionNumber}');
        _state = state.copyWith(sectionNumber: event.sectionNumber);
        notifyListeners();
    }
  }
}
