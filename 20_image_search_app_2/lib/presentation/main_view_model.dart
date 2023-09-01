import 'package:flutter/material.dart';
import 'package:image_search_app_2/domain/model/photo.dart';
import 'package:image_search_app_2/domain/repository/photo_repository.dart';

class MainViewModel with ChangeNotifier {
  List<Photo> _photos = [];

  List<Photo> get photos => _photos;

  bool isLoading = false;

  final PhotoRepository _photoRepository;

  MainViewModel(this._photoRepository);

  void fetchPhotos(String query) async {
    isLoading = true;
    notifyListeners();

    _photos = await _photoRepository.getPhotos(query);
    isLoading = false;
    notifyListeners();
  }
}
