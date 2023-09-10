import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

sealed class HomeEvent {
  factory HomeEvent.departClick() = DepartClick;

  factory HomeEvent.arriveClick() = ArriveClick;

  factory HomeEvent.historyClick(Address address) = HistoryClick;

  factory HomeEvent.changeSection(HomeSection section) = ChangeSection;

  factory HomeEvent.getLocation((double, double) location) = GetLocation;

  factory HomeEvent.arriveChange(String query) = ArriveChange;

  factory HomeEvent.departChange(Address address) = DepartChange;
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

class GetLocation implements HomeEvent {
  final (double, double) location;

  GetLocation(this.location);
}

class DepartChange implements HomeEvent {
  final Address address;

  DepartChange(this.address);
}

class ArriveChange implements HomeEvent {
  final String query;

  ArriveChange(this.query);
}
