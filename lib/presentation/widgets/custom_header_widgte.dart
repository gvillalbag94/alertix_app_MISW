import 'package:alertix_app/presentation/design_system/spaces.dart';
import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/styles.dart';

class CustomHeaderWidget extends StatelessWidget {
  final Widget? leftIcon;
  final Widget? rightIcon;
  final String title;
  final VoidCallback? onLeftIconPressed;
  final VoidCallback? onRightIconPressed;

  const CustomHeaderWidget({
    super.key,
    this.leftIcon,
    this.rightIcon,
    required this.title,
    this.onLeftIconPressed,
    this.onRightIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AlertixColors.mainColor3,
      padding: const EdgeInsets.symmetric(
        horizontal: AlertixSpaces.space16,
        vertical: AlertixSpaces.space8,
      ),
      child: SafeArea(
        child: AppBar(
          backgroundColor: AlertixColors.mainColor3,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: leftIcon != null
              ? IconButton(
                  icon: leftIcon!,
                  onPressed: onLeftIconPressed,
                )
              : null,
          title: Text(
            title,
            style: AlertixTextStyles.titleL.copyWith(
              color: AlertixColors.textColor2,
            ),
          ),
          actions: rightIcon != null
              ? [
                  IconButton(
                    icon: rightIcon!,
                    onPressed: onRightIconPressed,
                  )
                ]
              : null,
        ),
      ),
    );
  }
}
