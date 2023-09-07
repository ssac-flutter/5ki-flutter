import 'package:flutter/material.dart';

import '../home_state.dart';

class TopSearchInput extends StatefulWidget {
  final HomeState state;

  const TopSearchInput({
    super.key,
    required this.state,
  });

  @override
  State<TopSearchInput> createState() => _TopSearchInputState();
}

class _TopSearchInputState extends State<TopSearchInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.square_sharp,
              color: Color(0xff35497A),
              size: 12,
            ),
            labelText: widget.state.depart,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: Color(0xff35497A),
                size: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
