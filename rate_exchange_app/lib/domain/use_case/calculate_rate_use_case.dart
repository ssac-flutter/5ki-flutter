import 'package:injectable/injectable.dart';
import 'package:rate_exchange_app/domain/model/rate.dart';

@singleton
class CalculateRateUseCase {
  num execute({
    required List<Rate> rates,
    required num baseMoney,
    required String baseCode,
    required String targetCode,
  }) {
    final baseRate = rates.where((e) => e.code == baseCode).first.rate;
    final targetRate = rates.where((e) => e.code == targetCode).first.rate;

    return baseMoney / baseRate * targetRate;
  }
}
