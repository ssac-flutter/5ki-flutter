import 'package:injectable/injectable.dart';
import 'package:rate_exchange_app/data/remote/rate_api.dart';
import 'package:rate_exchange_app/data/remote/rates_mapper.dart';
import 'package:rate_exchange_app/domain/model/rates_result.dart';
import 'package:rate_exchange_app/domain/repository/rates_repository.dart';

@Singleton(as: RatesRepository)
class RatesRepositoryImpl implements RatesRepository {
  final RateApi _api;

  RatesRepositoryImpl(this._api);

  @override
  Future<RatesResult> getRatesResult() async {
    final dto = await _api.getRates();
    return dto.toRatesResult();
  }
}
