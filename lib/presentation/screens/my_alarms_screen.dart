import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../utils/navigation.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_header_widgte.dart';

class MyAlarmsScreen extends StatelessWidget {
  const MyAlarmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BackgroundWidget(
          child: Column(
            children: [
              CustomHeaderWidget(
                title: 'Mis alarmas',
                rightIcon: Icon(
                  Icons.account_circle,
                  color: AlertixColors.backgroundColor1,
                ),
                onRightIconPressed: () {
                  AlertixNavigation.navigateToAndReplace(
                    context,
                    AlertixNavigation.signIn,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
