import 'package:flutter/material.dart';
import 'package:tada_clone/home/components/bottom_search_input.dart';

class HomeFirstSection extends StatelessWidget {
  const HomeFirstSection({super.key});

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
            Spacer(),
            BottomSearchInput(name: '오준석'),
          ],
        ),
      ],
    );
  }
}
