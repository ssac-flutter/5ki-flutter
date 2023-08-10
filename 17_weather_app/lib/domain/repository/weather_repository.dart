import 'package:weather_app/domain/weather/weather_data.dart';

abstract interface class WeatherRepository {
  Future<WeatherData> getWeatherData();
}
