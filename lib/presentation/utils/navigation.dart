import 'package:flutter/material.dart';

import '../screens/camera_screen.dart';
import '../screens/create_alarms_screen.dart';
import '../screens/home_screen.dart';
import '../screens/my_alarms_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/sign_in_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/validate_code_screen.dart';

class AlertixNavigation {
  static const String splashScreen = '/';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String validateCode = '/validate-code';
  static const String home = '/home';
  static const String alarms = '/alarms';
  static const String settings = '/settings';
  static const String createAlarms = '/create-alarms';
  static const String cameraScreen = '/camera-screen';

  static final Map<String, Widget Function(BuildContext)> screens = {
    splashScreen: (context) => const SplashScreen(),
    signUp: (context) => const SignUpScreen(),
    alarms: (context) => const MyAlarmsScreen(),
    settings: (context) => SettingsScreen(),
    createAlarms: (context) => const CreateAlarmsScreen(),
    signIn: (context) => const SignInScreen(),
    validateCode: (context) => const ValidateCodeScreen(),
    home: (context) => const HomeScreen(),
    cameraScreen: (context) => const CameraScreen(),
  };

  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void navigateToAndReplace(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }
}
