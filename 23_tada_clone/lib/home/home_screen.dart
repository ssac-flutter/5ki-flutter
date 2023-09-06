import 'package:flutter/material.dart';
import 'package:tada_clone/home/home_state.dart';
import 'package:tada_clone/home/section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const state = HomeState(userName: '오준석', depart: '현위치');
    return const HomeFirstSection(state: state);
  }
}
