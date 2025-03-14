import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
  });

  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AlertixSpaces.space16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AlertixSpaces.space8),
        border: Border.all(color: AlertixColors.mainColor1),
      ),
      child: TextField(
        controller: _controller,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: AlertixSpaces.space16),
        ),
      ),
    );
  }
}
