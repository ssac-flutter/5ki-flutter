import 'package:image_search_app/data/model/photo.dart';

// 불변 객체
class MainState {
  final List<Photo> photos;
  final bool isLoading;

  MainState({
    required this.photos,
    required this.isLoading,
  });

  MainState copyWith({
    List<Photo>? photos,
    bool? isLoading,
  }) {
    return MainState(
      photos: photos ?? this.photos,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
