import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  final String? depart;
  final String? arrive;
  final void Function() onDepartClick;
  final void Function() onArriveClick;

  const LocationInput({
    super.key,
    required this.depart,
    required this.arrive,
    required this.onDepartClick,
    required this.onArriveClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onDepartClick,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xffF3F8FE),
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
                  depart == null ? '목적지 입력' : depart!,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onArriveClick,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xffF3F8FE),
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
                  arrive == null ? '목적지 입력' : arrive!,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
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
