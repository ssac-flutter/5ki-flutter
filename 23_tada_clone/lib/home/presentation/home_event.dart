import 'package:tada_clone/home/domain/model/address.dart';

sealed class HomeEvent {
  factory HomeEvent.departClick() = DepartClick;

  factory HomeEvent.arriveClick() = ArriveClick;

  factory HomeEvent.historyClick(Address address) = HistoryClick;

  factory HomeEvent.changeSection(int sectionNumber) = ChangeSection;
}

class DepartClick implements HomeEvent {}

class ArriveClick implements HomeEvent {}

class HistoryClick implements HomeEvent {
  final Address address;

  HistoryClick(this.address);
}

class ChangeSection implements HomeEvent {
  final int sectionNumber;

  ChangeSection(this.sectionNumber);
}
