import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

sealed class HomeEvent {
  factory HomeEvent.departClick() = DepartClick;

  factory HomeEvent.arriveClick() = ArriveClick;

  factory HomeEvent.historyClick(Address address) = HistoryClick;

  factory HomeEvent.changeSection(HomeSection section) = ChangeSection;
}

class DepartClick implements HomeEvent {}

class ArriveClick implements HomeEvent {}

class HistoryClick implements HomeEvent {
  final Address address;

  HistoryClick(this.address);
}

class ChangeSection implements HomeEvent {
  final HomeSection section;

  ChangeSection(this.section);
}
