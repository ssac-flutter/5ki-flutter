import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tada_clone/home/data/location/geolocator_location_tracker.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_view_model.dart';
import 'package:tada_clone/home/presentation/section/home_second_section.dart';

import 'section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return switch (viewModel.state.sectionNumber) {
      1 => HomeFirstSection(
          state: viewModel.state,
          locationTracker: GeolocatorLocationTracker(),
          onEvent: (HomeEvent event) {
            if (event is DepartClick) {
              viewModel.onEvent(HomeEvent.changeSection(2));
            }
            viewModel.onEvent(event);
          },
        ),
      2 => HomeSecondSection(
          state: viewModel.state,
          onBack: () {
            viewModel.onEvent(HomeEvent.changeSection(1));
          },
        ),
      3 => Container(),
      _ => Container(),
    };
  }
}
