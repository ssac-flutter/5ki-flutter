import 'package:flutter/material.dart';
import 'package:tada_clone/home/presentation/components/tada_textfield.dart';

import '../home_state.dart';

class TopSearchInput extends StatelessWidget {
  final HomeState state;

  const TopSearchInput({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TadaTextField(
          icon: Icons.square_outlined,
          hintText: '출발지 입력',
          text: state.depart,
          suffixWidget: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Color(0xff35497A),
              size: 12,
            ),
          ),
        ),
        const SizedBox(height: 8),
        TadaTextField(
          icon: Icons.square,
          hintText: '목적지 입력',
          text: state.arrive,
          suffixWidget: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 4.0,
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)))),
              onPressed: () {},
              child: const Text(
                '+ 경유',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
