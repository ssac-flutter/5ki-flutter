import 'package:flutter/material.dart';
import 'package:image_search_app/data/repository/photo_repository.dart';
import 'package:image_search_app/ui/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  MainState _state = MainState(photos: [], isLoading: false);

  MainState get state => _state;

  void fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final photos = await _repository.getPhotos(query);

    _state = state.copyWith(
      isLoading: false,
      photos: photos,
    );
    notifyListeners();
  }
}
