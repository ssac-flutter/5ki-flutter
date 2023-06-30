import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_app/data/dto/pixabay_result_dto.dart';

class PixabayApi {
  Future<PixabayResultDto> getImages(String query) async {
    final url =
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo';
    final http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return PixabayResultDto.fromJson(jsonString);
  }
}
