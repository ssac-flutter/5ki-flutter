import 'package:flutter/material.dart';

import '../home_state.dart';

class LocationInput extends StatefulWidget {
  final HomeState state;
  final void Function() onDepartClick;
  final void Function() onArriveClick;

  const LocationInput({
    super.key,
    required this.state,
    required this.onDepartClick,
    required this.onArriveClick,
  });

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  bool isDepartClicked = false;
  bool isArriveClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTapCancel: () {
            setState(() {
              isDepartClicked = false;
            });
          },
          onTapDown: (_) {
            setState(() {
              isDepartClicked = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              isDepartClicked = false;
            });
            widget.onDepartClick();
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(isDepartClicked ? 0xffdbe8fc : 0xffF3F8FE),
              border: Border.all(
                color: const Color(0xffB6D6F9),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.square_sharp,
                  color: Color(0xff35497A),
                  size: 12,
                ),
                const SizedBox(width: 16),
                Text(
                  widget.state.currentPlaceName == null ? '출발지 입력' : widget.state.currentPlaceName!,
                  style: TextStyle(
                    fontSize: 16,
                    color: widget.state.depart == null
                        ? Colors.grey
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTapCancel: () {
            setState(() {
              isArriveClicked = false;
            });
          },
          onTapDown: (_) {
            setState(() {
              isArriveClicked = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              isArriveClicked = false;
            });
            widget.onArriveClick();
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(isArriveClicked ? 0xffdbe8fc : 0xffF3F8FE),
              border: Border.all(
                color: const Color(0xffB6D6F9),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.square_sharp,
                  color: Color(0xff559EF3),
                  size: 12,
                ),
                const SizedBox(width: 16),
                Text(
                  widget.state.arrive == null ? '목적지 입력' : widget.state.arrive!,
                  style: TextStyle(
                    fontSize: 16,
                    color: widget.state.arrive == null
                        ? Colors.grey
                        : Colors.black,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_right_alt_sharp,
                  color: Color(0xffB6D6F9),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
