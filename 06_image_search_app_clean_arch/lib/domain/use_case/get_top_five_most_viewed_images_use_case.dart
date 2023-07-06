import 'package:image_search_app/core/result.dart';
import 'package:image_search_app/domain/model/photo.dart';
import 'package:image_search_app/domain/repository/photo_repository.dart';

class GetTopFiveMostViewedImagesUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewedImagesUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    try {
      final photos = await _repository.getPhotos(query);

      // 조건에 맞는
      photos.sort((a, b) => -a.views.compareTo(b.views));

      return Result.success(photos.take(5).toList());
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
