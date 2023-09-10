import 'dart:async';
import 'dart:developer';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/domain/use_case/search_location_use_case.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final SearchLocationUseCase _searchLocationUseCase;

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

  CancelableOperation? _cancelableFuture;
  Timer? _debounce;

  HomeState get state => _state;

  HomeViewModel(this._searchLocationUseCase);

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
          _cancelSearch();
        } else {
          try {
            _getSearchResult(event.query);
          } catch (e) {
            _state = state.copyWith(
              searchStatus: SearchStatus.error,
            );
            notifyListeners();
          }
        }
    }
  }

  void _getSearchResult(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      _state = state.copyWith(
        searchStatus: SearchStatus.loading,
      );
      notifyListeners();

      _cancelableFuture = CancelableOperation.fromFuture(
        _searchLocationUseCase.execute(query),
        onCancel: () => [],
      );
      final result = await _cancelableFuture?.value;

      _state = state.copyWith(
        searchStatus: SearchStatus.success,
        searchResultAddresses: result,
      );
      notifyListeners();
    });
  }

  void _cancelSearch() async {
    await _cancelableFuture?.cancel();

    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _state = state.copyWith(
      searchStatus: SearchStatus.none,
    );
    notifyListeners();
  }
}
