import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget top;
  final Widget bottom;

  const CustomButton({
    super.key,
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        top,
        bottom,
      ],
    );
  }
}
