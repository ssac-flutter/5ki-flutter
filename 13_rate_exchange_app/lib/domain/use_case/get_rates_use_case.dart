import 'package:injectable/injectable.dart';
import 'package:rate_exchange_app/core/result.dart';
import 'package:rate_exchange_app/domain/model/rates_result.dart';
import 'package:rate_exchange_app/domain/repository/rates_repository.dart';

@singleton
class GetRatesUseCase {
  final RatesRepository _ratesRepository;

  GetRatesUseCase(this._ratesRepository);

  Future<Result<RatesResult>> execute() async {
    try {
      return Result.success(await _ratesRepository.getRatesResult());
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
