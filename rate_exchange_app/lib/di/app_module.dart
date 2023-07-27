import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rate_exchange_app/data/remote/rate_api.dart';

@module
abstract class AppModule {
  @prod
  @lazySingleton
  RateApi get rateApi => RateApi(Dio());
}

@module
abstract class AppDebugModule {
  @dev
  @lazySingleton
  RateApi get rateApi => RateApi(Dio());
}