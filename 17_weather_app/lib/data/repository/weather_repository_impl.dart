import 'package:injectable/injectable.dart';
import 'package:weather_app/data/data_source/weather_api.dart';
import 'package:weather_app/data/mapper/weather_mapper.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/domain/weather/weather_data.dart';

@Singleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _api;

  WeatherRepositoryImpl(this._api);

  @override
  Future<WeatherData> getWeatherData(num latitude, num longitude) async {
    try {
      final dto = await _api.getWeatherDataDto(latitude, longitude);
      return dto.toWeatherData();
    } catch (e) {
      throw Exception('weather api 에러');
    }
  }
}
