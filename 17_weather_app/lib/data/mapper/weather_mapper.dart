import 'package:weather_app/data/dto/weather_data_dto.dart';
import 'package:weather_app/domain/weather/weather_data.dart';
import 'package:weather_app/domain/weather/weather_info.dart';
import 'package:weather_app/domain/weather/weather_type.dart';

extension ToWeatherData on WeatherDataDto {
  WeatherData toWeatherData() {
    return WeatherData(
      timeUnit: hourlyUnits?.time ?? '',
      temperatureUnit: hourlyUnits?.temperature2m ?? '',
      weatherCodeUnit: hourlyUnits?.weathercode ?? '',
      humidityUnit: hourlyUnits?.relativehumidity2m ?? '',
      windSpeedUnit: hourlyUnits?.windspeed10m ?? '',
      pressureUnit: hourlyUnits?.pressureMsl ?? '',
      timezone: timezone ?? '',
      latitude: latitude ?? 0,
      longitude: longitude ?? 0,
      weatherInfoList: List.generate(hourly?.time?.length ?? 0, (index) {
        return WeatherInfo(
          time: DateTime.parse(hourly!.time![index]),
          temperature: hourly!.temperature2m![index],
          weatherType: switch (hourly!.weathercode![index]) {
            0 => const WeatherType(
                status: '완전 맑음',
                iconName: 'clear',
              ),
            1 => const WeatherType(
                status: '대체로 맑음',
                iconName: 'clear',
              ),
            2 => const WeatherType(
                status: '약간 흐림',
                iconName: 'cloudy',
              ),
            3 => const WeatherType(
                status: '흐림',
                iconName: 'cloudy',
              ),
            45 || 48 => const WeatherType(
                status: '안개',
                iconName: 'fog',
              ),
            51 => const WeatherType(
                status: '약한 이슬비',
                iconName: 'drizzle',
              ),
            53 => const WeatherType(
                status: '이슬비',
                iconName: 'drizzle',
              ),
            55 => const WeatherType(
                status: '강한 이슬비',
                iconName: 'drizzle',
              ),
            56 => const WeatherType(
                status: '약한 얼어붙는 이슬비',
                iconName: 'drizzle',
              ),
            57 => const WeatherType(
                status: '강한 얼어붙는 이슬비',
                iconName: 'drizzle',
              ),
            61 => const WeatherType(
                status: '약한 비',
                iconName: 'rain',
              ),
            63 => const WeatherType(
                status: '비',
                iconName: 'rain',
              ),
            65 => const WeatherType(
                status: '폭우',
                iconName: 'rain',
              ),
            66 => const WeatherType(
                status: '약간 얼은 비',
                iconName: 'freezing_rain',
              ),
            67 => const WeatherType(
                status: '얼은 비',
                iconName: 'freezing_rain',
              ),
            71 => const WeatherType(
                status: '약한 눈',
                iconName: 'snow',
              ),
            73 => const WeatherType(
                status: '눈',
                iconName: 'snow',
              ),
            75 => const WeatherType(
                status: '강한 눈',
                iconName: 'snow',
              ),
            77 => const WeatherType(
                status: '우박',
                iconName: 'snow',
              ),
            80 => const WeatherType(
                status: '약한 소나기',
                iconName: 'rain',
              ),
            81 => const WeatherType(
                status: '소나기',
                iconName: 'rain',
              ),
            82 => const WeatherType(
                status: '강한 소나기',
                iconName: 'rain',
              ),
            85 || 86 => const WeatherType(
                status: '함박 눈',
                iconName: 'snow',
              ),
            95 => const WeatherType(
                status: '천둥번개',
                iconName: 'thunderstorm',
              ),
            96 || 99 => const WeatherType(
                status: '우박을 동반한 천둥번개',
                iconName: 'thunderstorm',
              ),
            _ => const WeatherType(
                status: '모름',
                iconName: 'clear',
              ),
          },
          humidity: hourly!.relativehumidity2m![index],
          windSpeed: hourly!.windspeed10m![index],
          pressure: hourly!.pressureMsl![index],
        );
      }),
    );
  }
}
