import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨'),
      ),
      body: Center(
        child: Text(state.currentWeatherInfo.toString()),
      ),
    );
  }
}
