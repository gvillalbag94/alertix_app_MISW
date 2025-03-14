import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../design_system/styles.dart';

class CodeInputWidget extends StatelessWidget {
  const CodeInputWidget({
    super.key,
    required this.onCompleted,
    required this.onEditing,
  });

  final Function(String) onCompleted;
  final Function(bool) onEditing;

  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      length: 6,
      textStyle: AlertixTextStyles.titleL,
      underlineColor: AlertixColors.textColor3,
      cursorColor: AlertixColors.mainColor1,
      fillColor: Colors.transparent,
      fullBorder: true,
      digitsOnly: true,
      itemSize: AlertixSpaces.space48,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
      onEditing: onEditing,
    );
  }
}
