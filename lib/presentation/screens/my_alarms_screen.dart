import 'package:alertix_app/presentation/screens/day_alarms_screen.dart';
import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../utils/navigation.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_header_widgte.dart';
import '../widgets/tab_bar_component.dart';

class MyAlarmsScreen extends StatefulWidget {
  const MyAlarmsScreen({super.key});

  @override
  State<MyAlarmsScreen> createState() => _MyAlarmsScreenState();
}

class _MyAlarmsScreenState extends State<MyAlarmsScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
              TabBarComponent(
                tabController: tabController,
                selectedIndex: selectedIndex,
                onTabSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    DayAlarmsScreen(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
