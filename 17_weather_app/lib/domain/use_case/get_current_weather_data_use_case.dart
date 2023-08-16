import 'package:injectable/injectable.dart';
import 'package:weather_app/core/result.dart';
import 'package:weather_app/domain/use_case/get_weekly_weather_data_use_case.dart';
import 'package:weather_app/domain/weather/weather_info.dart';

@singleton
class GetCurrentWeatherDataUseCase {
  final GetWeeklyWeatherDataUseCase _getWeeklyWeatherDataUseCase;

  GetCurrentWeatherDataUseCase(this._getWeeklyWeatherDataUseCase);

  Future<Result<WeatherInfo>> execute() async {
    try {
      DateTime now = DateTime.now();
      DateTime formattedDateTime =
          DateTime(now.year, now.month, now.day, now.hour, 0);

      final currentWeatherInfo = (await _getWeeklyWeatherDataUseCase.execute())
          .singleWhere(
              (e) => e.time.toString() == formattedDateTime.toString());

      return Success(currentWeatherInfo);
    } on Exception catch (e) {
      return Fail(e);
    }
  }
}
