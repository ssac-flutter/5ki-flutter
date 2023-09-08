import 'package:flutter/material.dart';
import 'package:tada_clone/home/presentation/components/tada_textfield.dart';
import 'package:tada_clone/home/presentation/home_event.dart';
import 'dart:math' as math;

import '../home_state.dart';

class TopSearchInput extends StatelessWidget {
  final HomeState state;
  final void Function(String text) onDepartChange;
  final void Function(String text) onArriveChange;

  const TopSearchInput({
    super.key,
    required this.state,
    required this.onDepartChange,
    required this.onArriveChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TadaTextField(
          focus: state.lastEvent is DepartClick,
          icon: Icons.square_outlined,
          hintText: '출발지 입력',
          text: state.depart,
          suffixWidget: Transform.rotate(
            angle: 45 * math.pi / 180,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outlined,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ),
          onChange: onDepartChange,
        ),
        const SizedBox(height: 8),
        TadaTextField(
          focus: state.lastEvent is ArriveClick,
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
          onChange: onArriveChange,
        ),
      ],
    );
  }
}
