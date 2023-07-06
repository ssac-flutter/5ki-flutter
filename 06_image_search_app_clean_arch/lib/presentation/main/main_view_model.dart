import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_app/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:image_search_app/presentation/main/main_state.dart';
import 'package:image_search_app/presentation/main/main_ui_event.dart';

class MainViewModel with ChangeNotifier {
  final GetTopFiveMostViewedImagesUseCase _getTopFiveMostViewedImagesUseCase;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getTopFiveMostViewedImagesUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchImages(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackBar('검색어가 없습니다'));
      return;
    }

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      isLoading: false,
      photos: await _getTopFiveMostViewedImagesUseCase.execute(query),
    );
    notifyListeners();
  }
}
