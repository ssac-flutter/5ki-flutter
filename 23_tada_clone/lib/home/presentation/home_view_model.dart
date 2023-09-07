import 'package:flutter/material.dart';
import 'package:tada_clone/home/data/location/geolocator_location_tracker.dart';
import 'package:tada_clone/home/domain/location/location_tracker.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final LocationTracker _locationTracker = GeolocatorLocationTracker();

  HomeState _state = const HomeState(
    userName: '오준석',
    depart: '현위치',
    arrive: '서울',
    recentlyAddresses: [
      Address(
        title: '문래역 [2호선]',
        address: '서울 영등포구 문래동3가 68-1',
      )
    ],
  );

  HomeState get state => _state;

  HomeViewModel() {
    _locationTracker.getLocation().then((location) {
      _state = state.copyWith(currentLocation: location);
      notifyListeners();
    });
  }
}
