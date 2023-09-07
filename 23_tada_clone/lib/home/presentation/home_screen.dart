import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';

import 'home_state.dart';
import 'section/home_first_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const state = HomeState(
      userName: '오준석',
      depart: '현위치',
      arrive: '서울',
      recentlyAddresses: [
        Address(
          title: '문래역 [2호선]',
          address: '서울 영등포구 문래동3가 68-1',
        )
      ],
    );
    return const HomeFirstSection(state: state);
  }
}
