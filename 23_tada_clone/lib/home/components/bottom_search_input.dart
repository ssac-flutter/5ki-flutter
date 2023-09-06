import 'package:flutter/material.dart';
import 'package:tada_clone/home/components/history_list.dart';
import 'package:tada_clone/home/components/location_input.dart';
import 'package:tada_clone/home/domain/model/address.dart';

class BottomSearchInput extends StatelessWidget {
  final String name;

  const BottomSearchInput({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name 님 탑승',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            LocationInput(
              depart: '현위치 : ',
              arrive: null,
              onDepartClick: () {},
              onArriveClick: () {},
            ),
            const HistoryList(addresses: [
              Address(
                title: '문래역 [2호선]',
                address: '서울 영등포구 문래동3가 68-1',
              )
            ]),
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
