import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../design_system/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.backgroundColor = AlertixColors.mainColor1,
    this.darkText = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  final Color backgroundColor;
  final bool darkText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(
            vertical: AlertixSpaces.space16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AlertixSpaces.space8),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                style: AlertixTextStyles.buttonLUppercase14.copyWith(
                  color: darkText
                      ? AlertixColors.textColor1
                      : AlertixColors.textColor2,
                ),
              ),
      ),
    );
  }
}
