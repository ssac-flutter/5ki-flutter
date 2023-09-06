import 'package:flutter/material.dart';
import 'package:tada_clone/home/components/address_item.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$name 님 탑승'),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.square_sharp,
                  color: Color(0xff35497A),
                ),
                hintText: '출발지 입력',
                border: OutlineInputBorder(),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.square_sharp,
                  color: Color(0xff559EF3),
                ),
                hintText: '목적지 입력',
                border: OutlineInputBorder(),
              ),
            ),
            const AddressItem(
              address: Address(
                title: '문래역 [2호선]',
                address: '서울 영등포구 문래동3가 68-1',
              ),
              icon: Icon(Icons.history),
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
