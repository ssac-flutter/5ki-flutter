import 'package:rate_exchange_app/data/remote/rates_dto.dart';
import 'package:rate_exchange_app/domain/model/rate.dart';
import 'package:rate_exchange_app/domain/model/rates_result.dart';

extension ToRatesResult on RatesDto {
  RatesResult toRatesResult() {
    return RatesResult(
        lastUpdateTime:
            DateTime.fromMillisecondsSinceEpoch(timeLastUpdateUnix!.toInt()),
        nextUpdateTime:
            DateTime.fromMillisecondsSinceEpoch(timeNextUpdateUnix!.toInt()),
        rates: rates!.entries
            .map((e) => Rate(
                  code: e.key,
                  rate: e.value,
                ))
            .toList());
  }
}
