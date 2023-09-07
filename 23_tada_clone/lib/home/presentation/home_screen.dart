import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tada_clone/home/data/location/geolocator_location_tracker.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_view_model.dart';

import 'section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return HomeFirstSection(
      state: viewModel.state,
      locationTracker: GeolocatorLocationTracker(),
      onEvent: (HomeEvent event) {
        switch (event) {
          case DepartClick():
            context.go('/home_second', extra: viewModel.state);
          case ArriveClick():
          // TODO: Handle this case.
          case HistoryClick():
          // TODO: Handle this case.
        }
        viewModel.onEvent(event);
      },
    );
  }
}
