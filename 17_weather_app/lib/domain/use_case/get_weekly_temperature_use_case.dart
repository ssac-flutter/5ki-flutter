import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/use_case/get_weekly_weather_data_use_case.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

@singleton
class GetWeeklyTemperatureUseCase {
  final GetWeeklyWeatherDataUseCase _getWeeklyWeatherDataUseCase;

  GetWeeklyTemperatureUseCase(this._getWeeklyWeatherDataUseCase);

  Future<Result<List<WeatherInfo>>> execute() async {
    try {
      final weeklyWeatherData = await _getWeeklyWeatherDataUseCase.execute();

      return Success([
        weeklyWeatherData[0],
        weeklyWeatherData[6],
        weeklyWeatherData[12],
        weeklyWeatherData[24],
      ]);
    } on Exception catch (e) {
      return Fail(e);
    }
  }
}
