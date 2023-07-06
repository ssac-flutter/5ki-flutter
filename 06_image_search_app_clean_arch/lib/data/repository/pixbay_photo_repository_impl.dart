import 'package:image_search_app/core/result.dart';
import 'package:image_search_app/data/api/pixabay_api.dart';
import 'package:image_search_app/data/mapper/photo_mapper.dart';
import 'package:image_search_app/domain/model/photo.dart';
import 'package:image_search_app/domain/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      final resultDto = await _api.getImages(query);

      if (resultDto.hits == null) {
        return const Result.error('데이터가 없습니다');
      }

      return Result.success(resultDto.hits!.map((e) => e.toPhoto()).toList());
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
