import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
  });

  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: (textStyle ?? AlertixTextStyles.bodyL).copyWith(
          decoration: TextDecoration.underline,
          color: AlertixColors.mainColor1,
        ),
      ),
    );
  }
}
