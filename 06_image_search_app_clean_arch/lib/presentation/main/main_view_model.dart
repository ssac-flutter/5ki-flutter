import 'package:flutter/material.dart';
import 'package:image_search_app/domain/repository/photo_repository.dart';
import 'package:image_search_app/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final photos = await _repository.getPhotos(query);

    // 조건에 맞는
    photos.sort((a, b) => -a.views.compareTo(b.views));


    _state = state.copyWith(
      isLoading: false,
      photos: photos.take(5).toList(),
    );
    notifyListeners();
  }
}
