import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websocket_sample/presentation/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Websocket Sample'),
      ),
      body: ListView(
        children: viewModel.prices.map((e) => Text(e.toString())).toList(),
      ),
    );
  }
}
