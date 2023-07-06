import 'package:image_search_app/core/result.dart';
import 'package:image_search_app/domain/model/photo.dart';
import 'package:image_search_app/domain/repository/photo_repository.dart';

class GetTopFiveMostViewedImagesUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewedImagesUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    final result = await _repository.getPhotos(query);

    switch (result) {
      case Success(:final data):
        // 조건에 맞는
        data.sort((a, b) => -a.views.compareTo(b.views));

        return Result.success(data.take(5).toList());

      case Error():
        return result;
    }
  }
}
