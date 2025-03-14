import 'package:flutter/material.dart';

import '../design_system/spaces.dart';
import '../design_system/styles.dart';
import '../utils/navigation.dart';
import '../widgets/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AlertixNavigation.signIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BackgroundWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: AlertixSpaces.space24),
              const Text(
                'Alertix',
                style: AlertixTextStyles.titleL,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
