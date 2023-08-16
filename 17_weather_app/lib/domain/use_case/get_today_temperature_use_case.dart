import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/use_case/get_weekly_weather_data_use_case.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

@singleton
class GetTodayTemperatureUseCase {
  final GetWeeklyWeatherDataUseCase _getWeeklyWeatherDataUseCase;

  GetTodayTemperatureUseCase(this._getWeeklyWeatherDataUseCase);

  Future<Result<List<WeatherInfo>>> execute() async {
    try {
      final weeklyWeatherData = await _getWeeklyWeatherDataUseCase.execute();

      return Success(List.generate(24, (index) => weeklyWeatherData[index]));
    } on Exception catch (e) {
      return Fail(e);
    }
  }
}
