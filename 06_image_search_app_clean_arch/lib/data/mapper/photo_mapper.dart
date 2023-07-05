import 'package:image_search_app/data/dto/pixabay_result_dto.dart';
import 'package:image_search_app/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      url: webformatURL ?? '',
      tags: tags ?? '',
      views: views ?? 0,
    );
  }
}
