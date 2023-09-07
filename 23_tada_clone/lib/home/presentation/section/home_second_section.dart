import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

import '../components/top_search_input.dart';

class HomeSecondSection extends StatelessWidget {
  final HomeState state;

  const HomeSecondSection({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding.copyWith(
              left: 16,
              right: 16,
            ),
        child: Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.go('/home_first');
                  },
                  child: const Icon(Icons.chevron_left),
                ),
              ],
            ),
            Expanded(
              child: TopSearchInput(state: state),
            ),
          ],
        ),
      ),
    );
  }
}
