// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/data/data_source/weather_api.dart' as _i6;
import 'package:weather_app/data/location/geolocator_location_tracker.dart'
    as _i5;
import 'package:weather_app/data/repository/weather_repository_impl.dart'
    as _i8;
import 'package:weather_app/di/app_module.dart' as _i15;
import 'package:weather_app/domain/location/location_tracker.dart' as _i4;
import 'package:weather_app/domain/repository/weather_repository.dart' as _i7;
import 'package:weather_app/domain/use_case/get_current_weather_data_use_case.dart'
    as _i10;
import 'package:weather_app/domain/use_case/get_daily_temperature_use_case.dart'
    as _i11;
import 'package:weather_app/domain/use_case/get_today_temperature_use_case.dart'
    as _i12;
import 'package:weather_app/domain/use_case/get_weekly_temperature_use_case.dart'
    as _i13;
import 'package:weather_app/domain/use_case/get_weekly_weather_data_use_case.dart'
    as _i9;
import 'package:weather_app/presentation/main_view_model.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.Dio>(appModule.dio);
    gh.singleton<_i4.LocationTracker>(_i5.GeolocatorLocationTracker());
    gh.singleton<_i6.WeatherApi>(_i6.WeatherApi(gh<_i3.Dio>()));
    gh.singleton<_i7.WeatherRepository>(
        _i8.WeatherRepositoryImpl(gh<_i6.WeatherApi>()));
    gh.singleton<_i9.GetWeeklyWeatherDataUseCase>(
        _i9.GetWeeklyWeatherDataUseCase(
      gh<_i7.WeatherRepository>(),
      gh<_i4.LocationTracker>(),
    ));
    gh.singleton<_i10.GetCurrentWeatherDataUseCase>(
        _i10.GetCurrentWeatherDataUseCase(
            gh<_i9.GetWeeklyWeatherDataUseCase>()));
    gh.singleton<_i11.GetDailyTemperatureUseCase>(
        _i11.GetDailyTemperatureUseCase(gh<_i9.GetWeeklyWeatherDataUseCase>()));
    gh.singleton<_i12.GetTodayTemperatureUseCase>(
        _i12.GetTodayTemperatureUseCase(gh<_i9.GetWeeklyWeatherDataUseCase>()));
    gh.singleton<_i13.GetWeeklyTemperatureUseCase>(
        _i13.GetWeeklyTemperatureUseCase(
            gh<_i9.GetWeeklyWeatherDataUseCase>()));
    gh.factory<_i14.MainViewModel>(() => _i14.MainViewModel(
          gh<_i10.GetCurrentWeatherDataUseCase>(),
          gh<_i11.GetDailyTemperatureUseCase>(),
          gh<_i12.GetTodayTemperatureUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i15.AppModule {}
