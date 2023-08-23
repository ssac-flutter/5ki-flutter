import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:freeshare/theme/component/button/button.dart';

class PopButton extends StatelessWidget {
  const PopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button(
      icon: 'arrow-left',
      color: context.color.text,
      type: ButtonType.flat,
      onPressed: () => Navigator.pop(context),
    );
  }
}
