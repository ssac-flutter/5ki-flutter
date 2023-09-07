import 'package:flutter/material.dart';
import 'package:tada_clone/home/domain/model/address.dart';
import 'package:tada_clone/home/presentation/home_event.dart';

import '../home_state.dart';
import 'history_list.dart';
import 'location_input.dart';

class BottomSearchInput extends StatelessWidget {
  final HomeState state;
  final void Function(HomeEvent event) onEvent;

  const BottomSearchInput({
    super.key,
    required this.state,
    required this.onEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                '${state.userName} 님 탑승',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 16),
            LocationInput(
              state: state,
              onDepartClick: () => onEvent(HomeEvent.departClick()),
              onArriveClick: () => onEvent(HomeEvent.arriveClick()),
            ),
            HistoryList(
              addresses: state.recentlyAddresses,
              onClick: (Address address) {
                print(address);
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('집 등록'),
            ),
          ],
        ),
      ),
    );
  }
}
