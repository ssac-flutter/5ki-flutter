import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/location/location_tracker.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

@singleton
class GetWeeklyWeatherDataUseCase {
  final WeatherRepository _weatherRepository;
  final LocationTracker _locationTracker;

  GetWeeklyWeatherDataUseCase(this._weatherRepository, this._locationTracker);

  Future<List<WeatherInfo>> execute() async {
    final (latitude, longitude) = await _locationTracker.getLocation();
    final weatherData =
        await _weatherRepository.getWeatherData(latitude, longitude);
    final currentWeatherInfo = weatherData.weatherInfoList;

    return currentWeatherInfo;
  }
}
