import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tada_clone/home/presentation/home_view_model.dart';

import 'section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return HomeFirstSection(state: viewModel.state);
  }
}
