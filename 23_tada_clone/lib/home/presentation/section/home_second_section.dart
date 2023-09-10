import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/components/address_list.dart';
import 'package:tada_clone/home/presentation/components/favorite_menu_list.dart';
import 'package:tada_clone/home/presentation/components/history_list.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'package:tada_clone/home/presentation/home_state.dart';

import '../components/top_search_input.dart';

class HomeSecondSection extends StatelessWidget {
  final HomeState state;
  final void Function(HomeEvent event) onEvent;
  final void Function() onBack;

  const HomeSecondSection({
    super.key,
    required this.state,
    required this.onBack,
    required this.onEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: onBack,
                            child: const Icon(Icons.chevron_left),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TopSearchInput(
                          state: state,
                          onDepartChange: (String text) {},
                          onArriveChange: (String text) =>
                              onEvent(ArriveChange(text)),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: switch (state.searchStatus) {
                    SearchStatus.none => RecentlyHistoryAndFavoriteList(
                        recentlyAddresses: state.recentlyAddresses,
                      ),
                    SearchStatus.loading => const Loading(),
                    SearchStatus.success => AddressList(
                        addresses: state.searchResultAddresses,
                        onClick: (Address address) {},
                      ),
                    SearchStatus.error => const Text('error'),
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentlyHistoryAndFavoriteList extends StatelessWidget {
  final List<Address> recentlyAddresses;

  const RecentlyHistoryAndFavoriteList({
    super.key,
    required this.recentlyAddresses,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HistoryList(
          header: const Row(
            children: [
              Text('최근 내역'),
              Spacer(),
              Text('편집>'),
            ],
          ),
          addresses: recentlyAddresses,
          onClick: (address) {},
        ),
        const SizedBox(height: 16.0),
        FavoriteMenuList(
          header: const Row(
            children: [
              Text('즐겨찾기'),
              Spacer(),
              Text('관리>'),
            ],
          ),
          onClick: (index) {},
        ),
      ],
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/loading_dots.json', width: 200);
  }
}
