import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app/data/api/pixabay_api.dart';

void main() {
  test('pixabay api test', () async {
    final api = PixabayApi();
    
    final dto = await api.getImages('apple');

    expect(dto.total, 9263);
  });
}