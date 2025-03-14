import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/styles.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  final int currentIndex;
  final void Function(int) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: AlertixColors.buttonColor4,
        labelTextStyle: MaterialStateProperty.all(
          AlertixTextStyles.bodyM.copyWith(
            color: AlertixColors.textColor3,
          ),
        ),
        iconTheme: MaterialStateProperty.all(
          const IconThemeData(
            color: AlertixColors.textColor3,
          ),
        ),
      ),
      child: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: AlertixColors.mainColor1,
        indicatorColor: AlertixColors.buttonColor4,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: 'Alarmas',
            selectedIcon: Icon(
              Icons.home_filled,
              color: AlertixColors.textColor3,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Crear Alarma',
            selectedIcon: Icon(
              Icons.notifications_sharp,
              color: AlertixColors.textColor3,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Configuraciones',
            selectedIcon: Icon(
              Icons.settings,
              color: AlertixColors.textColor3,
            ),
          ),
        ],
      ),
    );
  }
}
