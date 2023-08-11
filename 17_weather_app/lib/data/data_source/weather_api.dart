import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/dto/weather_data_dto.dart';

@singleton
class WeatherApi {
  final Dio _dio;

  WeatherApi(this._dio);

  Future<WeatherDataDto> getWeatherDataDto(
      num latitude, num longitude) async {
    final response = await _dio.get(
        'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=$latitude&longitude=$longitude');

    return WeatherDataDto.fromJson(response.data);
  }
}
