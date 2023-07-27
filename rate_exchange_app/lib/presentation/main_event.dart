import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_event.freezed.dart';

@freezed
sealed class MainEvent with _$MainEvent {
  const factory MainEvent.loadData() = LoadData;
  const factory MainEvent.inputBaseMoney(num money) = InputBaseMoney;
  const factory MainEvent.inputTargetMoney(num money) = TargetBaseMoney;
  const factory MainEvent.selectBaseCode(String code) = SelectBaseCode;
  const factory MainEvent.selectTargetCode(String code) = SelectTargetCode;
}

