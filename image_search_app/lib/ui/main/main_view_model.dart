import 'package:flutter/material.dart';
import 'package:image_search_app/data/repository/photo_repository.dart';
import 'package:image_search_app/ui/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  final MainState _state = MainState();

  MainState get state => _state;

  void fetchImages(String query) async {
    _state.isLoading = true;
    notifyListeners();

    _state.photos = await _repository.getPhotos(query);

    _state.isLoading = false;
    notifyListeners();
  }
}
