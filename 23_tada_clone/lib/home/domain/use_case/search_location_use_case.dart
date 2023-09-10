import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tada_clone/home/domain/model/address.dart';

class SearchLocationUseCase {
  final String _kakaoRestApiKey;

  SearchLocationUseCase(this._kakaoRestApiKey);

  Future<List<Address>> execute(String query) async {
    final url = Uri.parse(
        'https://dapi.kakao.com/v2/local/search/address?query=$query');

    final response = await http.get(url, headers: {
      'Authorization': 'KakaoAK $_kakaoRestApiKey',
      'Content-type': 'content-type: application/json;charset=UTF-8',
    });

    Iterable jsonArray = jsonDecode(response.body)['documents'];

    await Future.delayed(const Duration(seconds: 1));
    return jsonArray
        .map((e) => Address(
              title: e['address_name'],
              address: e['address_name'],
              location: (
                double.parse(e['x']),
                double.parse(e['y']),
              ),
            ))
        .toList();
  }
}
