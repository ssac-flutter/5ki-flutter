import 'package:flutter/material.dart';
import 'package:tada_clone/home/components/bottom_search_input.dart';
import 'package:tada_clone/home/home_state.dart';

class HomeFirstSection extends StatelessWidget {
  final HomeState state;

  const HomeFirstSection({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.red,
        ),
        Column(
          children: [
            const Spacer(),
            BottomSearchInput(state: state),
          ],
        ),
      ],
    );
  }
}
