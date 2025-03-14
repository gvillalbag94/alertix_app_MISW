import 'package:flutter/material.dart';

import '../design_system/gradients.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: AlertixGradients.background,
      ),
      child: child,
    );
  }
}
