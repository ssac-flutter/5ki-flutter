// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rate_exchange_app/data/remote/rate_api.dart' as _i4;
import 'package:rate_exchange_app/data/repository/rates_repository_impl.dart'
    as _i6;
import 'package:rate_exchange_app/di/app_module.dart' as _i9;
import 'package:rate_exchange_app/domain/repository/rates_repository.dart'
    as _i5;
import 'package:rate_exchange_app/domain/use_case/calculate_rate_use_case.dart'
    as _i3;
import 'package:rate_exchange_app/domain/use_case/get_rates_use_case.dart'
    as _i7;
import 'package:rate_exchange_app/presentation/main_view_model.dart' as _i8;

const String _prod = 'prod';
const String _dev = 'dev';

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
    final appDebugModule = _$AppDebugModule();
    gh.singleton<_i3.CalculateRateUseCase>(_i3.CalculateRateUseCase());
    gh.lazySingleton<_i4.RateApi>(
      () => appModule.rateApi,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.RateApi>(
      () => appDebugModule.rateApi,
      registerFor: {_dev},
    );
    gh.singleton<_i5.RatesRepository>(
        _i6.RatesRepositoryImpl(gh<_i4.RateApi>()));
    gh.singleton<_i7.GetRatesUseCase>(
        _i7.GetRatesUseCase(gh<_i5.RatesRepository>()));
    gh.factory<_i8.MainViewModel>(() => _i8.MainViewModel(
          gh<_i7.GetRatesUseCase>(),
          gh<_i3.CalculateRateUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}

class _$AppDebugModule extends _i9.AppDebugModule {}
