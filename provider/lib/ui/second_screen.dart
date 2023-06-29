import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exam/ui/main_view_model.dart';
import 'package:provider_exam/ui/second_view_model.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 화면'),
      ),
      body: Center(
        child: Text(
          '${viewModel.count}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();
        },
        child: const Text('+'),
      ),
    );
  }
}
