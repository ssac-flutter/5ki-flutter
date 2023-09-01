import 'dart:convert';

import 'package:image_search_app_2/domain/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  // pixabay.com
  static const String baseUrl = 'https://pixabay.com/api';

  Future<List<Photo>> getPhotos(String query) async {
    final response = await http.get(
        Uri.parse('$baseUrl/?key=37971457-4bad1cc05aa70353cb5a9d52e&q=$query&image_type=photo'));

    if (response.statusCode == 200) {
      final Iterable jsonList = jsonDecode(response.body)['hits'];
      final photos = jsonList.map((e) => Photo.fromJson(e)).toList();
      return photos;
    } else {
      throw Exception('error fetching photos');
    }
  }
}
