import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:freeshare/theme/component/button/button.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.hint,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
  }) : super(key: key);

  final String? hint;
  final TextEditingController? controller;
  final void Function(String text)? onChanged;
  final void Function(String text)? onSubmitted;
  final void Function()? onClear;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late final TextEditingController controller =
      widget.controller ?? TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        setState(() {
          widget.onChanged?.call(value);
        });
      },
      onSubmitted: widget.onSubmitted,
      style: context.typo.headline5,
      cursorColor: context.color.primary,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: context.color.hintContainer,
          hintText: widget.hint,
          hintStyle: context.typo.headline5.copyWith(
            fontWeight: context.typo.light,
            color: context.color.onHintContainer,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 11.5,
            horizontal: 16,
          ),
          suffixIcon: controller.text.isEmpty
              ? null
              : Button(
                  icon: 'close',
                  type: ButtonType.flat,
                  onPressed: () {
                    setState(() {});
                    controller.clear();
                    widget.onClear?.call();
                  },
                )),
    );
  }
}
