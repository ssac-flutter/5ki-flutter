import 'package:flutter/material.dart';
import 'package:mvvm/ui/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final viewModel = MainViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: viewModel.color,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                viewModel.changeRedColor();
              });
            },
            child: Text(viewModel.buttonText),
          ),
        ),
      ),
    );
  }
}
