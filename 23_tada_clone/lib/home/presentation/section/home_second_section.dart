import 'package:flutter/material.dart';
import 'package:tada_clone/home/presentation/components/address_list.dart';
import 'package:tada_clone/home/presentation/components/history_list.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

import '../components/top_search_input.dart';

class HomeSecondSection extends StatefulWidget {
  final HomeState state;
  final void Function() onBack;

  const HomeSecondSection({
    super.key,
    required this.state,
    required this.onBack,
  });

  @override
  State<HomeSecondSection> createState() => _HomeSecondSectionState();
}

class _HomeSecondSectionState extends State<HomeSecondSection> {
  bool isVisibleRecentlyHistory = true;
  bool isVisibleSearchResult = false;

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
                          onTap: widget.onBack,
                          child: const Icon(Icons.chevron_left),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TopSearchInput(
                        state: widget.state,
                        onDepartChange: (String text) {},
                        onArriveChange: (String text) {
                          setState(() {
                            isVisibleRecentlyHistory = text.isEmpty;
                            isVisibleSearchResult = text.isNotEmpty;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SizedBox(height: 24),
          if (isVisibleRecentlyHistory)
            const Row(
              children: [
                SizedBox(width: 32),
                Text('최근 내역'),
                Spacer(),
                Text('편집>'),
                SizedBox(width: 16),
              ],
            ),
          if (isVisibleRecentlyHistory)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: HistoryList(
                addresses: widget.state.recentlyAddresses,
                onClick: (address) {},
              ),
            ),
          if (isVisibleSearchResult)
            AddressList(
              addresses: widget.state.searchResultAddresses,
              onClick: (address) {},
            ),
        ],
      ),
    );
  }
}
