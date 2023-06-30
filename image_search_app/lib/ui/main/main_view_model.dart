import 'package:flutter/material.dart';
import 'package:image_search_app/data/model/photo.dart';
import 'package:image_search_app/data/repository/photo_repository.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  List<Photo> _photos = [];

  List<Photo> get photos => _photos;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void fetchImages(String query) async {
    _isLoading = true;
    notifyListeners();

    _photos = await _repository.getPhotos(query);

    _isLoading = false;
    notifyListeners();
  }
}
