import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/location/location_tracker.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

@singleton
class GetCurrentWeatherDataUseCase {
  final WeatherRepository _weatherRepository;
  final LocationTracker _locationTracker;

  GetCurrentWeatherDataUseCase(this._weatherRepository, this._locationTracker);

  Future<Result<WeatherInfo>> execute() async {
    try {
      final (latitude, longitude) = await _locationTracker.getLocation();
      final weatherData =
          await _weatherRepository.getWeatherData(latitude, longitude);

      DateTime now = DateTime.now();
      DateTime formattedDateTime = DateTime(now.year, now.month, now.day, now.hour, 0);

      final currentWeatherInfo = weatherData.weatherInfoList
          .singleWhere((e) => e.time.toString() == formattedDateTime.toString());

      return Success(currentWeatherInfo);
    } on Exception catch (e) {
      return Fail(e);
    }
  }
}
