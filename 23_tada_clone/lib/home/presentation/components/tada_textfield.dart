import 'package:flutter/material.dart';

class TadaTextField extends StatefulWidget {
  final IconData? icon;
  final String? hintText;
  final String? text;
  final Widget? suffixWidget;

  const TadaTextField({
    super.key,
    this.icon,
    this.hintText,
    this.text,
    this.suffixWidget,
  });

  @override
  State<TadaTextField> createState() => _TadaTextFieldState();
}

class _TadaTextFieldState extends State<TadaTextField> {
  final textEditingController = TextEditingController();
  final focusNode = FocusNode();
  var hasFocused = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    setState(() {
      hasFocused = focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.removeListener(_handleFocusChange);
    focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFFE6F3FC),
          ),
        ),
        filled: hasFocused,
        fillColor: const Color(0xFFF2F8FD),
        focusColor: const Color(0xFFF2F8FD),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: hasFocused ? const Color(0xff35497A) : Colors.black,
          size: 12,
        ),
        hintText: widget.text,
        suffixIcon: hasFocused
            ? widget.suffixWidget
            : null,
      ),
    );
  }
}
