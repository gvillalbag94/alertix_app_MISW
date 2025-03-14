import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.hint,
  });

  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AlertixSpaces.space16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AlertixSpaces.space8),
        border: Border.all(color: AlertixColors.mainColor1),
      ),
      child: DropdownButton<T>(
        value: value,
        items: items,
        onChanged: onChanged,
        hint: hint != null ? Text(hint!) : null,
        isExpanded: true,
        underline: const SizedBox(),
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AlertixColors.mainColor1,
        ),
      ),
    );
  }
}
