import 'package:tada_clone/home/domain/model/address.dart';

sealed class HomeEvent {
  factory HomeEvent.departClick() = DepartClick;

  factory HomeEvent.arriveClick() = ArriveClick;

  factory HomeEvent.historyClick(Address address) = HistoryClick;
}

class DepartClick implements HomeEvent {}

class ArriveClick implements HomeEvent {}

class HistoryClick implements HomeEvent {
  final Address address;

  HistoryClick(this.address);
}
