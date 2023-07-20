import 'package:flutter/material.dart';
import 'package:get_it_sample/di/di_setup.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(getIt<String>()),
      ),
      body: Center(
        child: Text(
          '${viewModel.count}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<MainViewModel>().increment();
            },
            child: const Text('+'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.push('/second');
            },
            child: const Text('>>>>'),
          ),
        ],
      ),
    );
  }
}

sealed class Action {
  factory Action.login() = Login;
  factory Action.logout() = Logout;
}

class Login implements Action {

}

class Logout implements Action {

}

class GetUserInfo implements Action {
  final String name;

  GetUserInfo(this.name);
}