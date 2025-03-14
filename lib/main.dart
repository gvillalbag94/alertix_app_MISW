import 'package:alertix_app/presentation/design_system/colors.dart';
import 'package:flutter/material.dart';

import 'presentation/utils/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alertix App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AlertixColors.mainColor1),
        useMaterial3: true,
      ),
      routes: AlertixNavigation.screens,
      initialRoute: AlertixNavigation.splashScreen,
    );
  }
}
