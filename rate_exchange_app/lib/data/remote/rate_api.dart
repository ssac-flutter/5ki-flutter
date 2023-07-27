import 'package:dio/dio.dart';
import 'package:rate_exchange_app/data/remote/rates_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'rate_api.g.dart';

@RestApi(baseUrl: "https://open.er-api.com/v6/")
abstract interface class RateApi {
  factory RateApi(Dio dio, {String baseUrl}) = _RateApi;

  @GET("/latest/USD")
  Future<RatesDto> getRates();
}
