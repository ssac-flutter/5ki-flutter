import 'package:image_search_app_2/data/photo_api.dart';
import 'package:image_search_app_2/domain/model/photo.dart';
import 'package:image_search_app_2/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  PhotoRepositoryImpl({required this.photoApi});

  final PhotoApi photoApi;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final photos = await photoApi.getPhotos(query);
    return photos;
  }
}
