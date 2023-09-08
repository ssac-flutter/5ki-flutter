import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tada_clone/home/data/location/geolocator_location_tracker.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_state.dart';
import 'package:tada_clone/home/presentation/home_view_model.dart';
import 'package:tada_clone/home/presentation/section/home_second_section.dart';

import 'section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  final void Function(bool hasBottomNavigation)
      onChangeBottomNavigationVisibility;

  const HomeScreen({
    super.key,
    required this.onChangeBottomNavigationVisibility,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return switch (viewModel.state.section) {
      HomeSection.first => HomeFirstSection(
          state: viewModel.state,
          locationTracker: GeolocatorLocationTracker(),
          onEvent: (HomeEvent event) {
            if (event is DepartClick) {
              onChangeBottomNavigationVisibility(false);
              viewModel.onEvent(HomeEvent.changeSection(HomeSection.second));
            } else if (event is ArriveClick) {
              onChangeBottomNavigationVisibility(false);
              viewModel.onEvent(HomeEvent.changeSection(HomeSection.second));
            }
            viewModel.onEvent(event);
          },
        ),
      HomeSection.second => HomeSecondSection(
          state: viewModel.state,
          onBack: () {
            onChangeBottomNavigationVisibility(true);
            viewModel.onEvent(HomeEvent.changeSection(HomeSection.first));
          },
        ),
      HomeSection.third => Container(),
      HomeSection.forth => Container(),
    };
  }
}
