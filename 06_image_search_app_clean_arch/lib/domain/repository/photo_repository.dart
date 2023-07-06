import 'package:image_search_app/core/result.dart';
import 'package:image_search_app/domain/model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query);
}
