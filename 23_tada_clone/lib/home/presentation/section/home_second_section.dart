import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tada_clone/home/presentation/components/history_list.dart';
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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(0, 20),
                  blurRadius: 100,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            context.go('/home_first');
                          },
                          child: const Icon(Icons.chevron_left),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TopSearchInput(state: state),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              SizedBox(width: 32),
              Text('최근 내역'),
              Spacer(),
              Text('편집>'),
              SizedBox(width: 16),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: HistoryList(
              addresses: state.recentlyAddresses,
              onClick: (address) {},
            ),
          ),
        ],
      ),
    );
  }
}
