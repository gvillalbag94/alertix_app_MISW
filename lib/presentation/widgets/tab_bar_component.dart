import 'package:alertix_app/presentation/design_system/colors.dart';
import 'package:alertix_app/presentation/design_system/styles.dart';
import 'package:flutter/material.dart';

import '../design_system/spaces.dart';

class TabBarComponent extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;
  final TabController tabController;

  const TabBarComponent({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AlertixSpaces.space56,
      color: AlertixColors.mainColor4,
      child: TabBar(
        controller: tabController,
        onTap: onTabSelected,
        tabs: const [
          Tab(text: 'Día'),
          Tab(text: 'Semana'),
          Tab(text: 'Mes'),
        ],
        labelColor: AlertixColors.textColor1,
        unselectedLabelColor: AlertixColors.textColor3,
        labelStyle:
            AlertixTextStyles.titleM.copyWith(color: AlertixColors.textColor1),
        unselectedLabelStyle:
            AlertixTextStyles.titleM.copyWith(color: AlertixColors.textColor3),
        padding: const EdgeInsets.all(4),
        indicatorColor: AlertixColors.mainColor1,
        dividerColor: Colors.transparent,
      ),
    );
  }
}
