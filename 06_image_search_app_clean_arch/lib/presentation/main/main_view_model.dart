import 'package:flutter/material.dart';
import 'package:image_search_app/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:image_search_app/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final GetTopFiveMostViewedImagesUseCase _getTopFiveMostViewedImagesUseCase;

  MainViewModel(this._getTopFiveMostViewedImagesUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      isLoading: false,
      photos: await _getTopFiveMostViewedImagesUseCase.execute(query),
    );
    notifyListeners();
  }
}
