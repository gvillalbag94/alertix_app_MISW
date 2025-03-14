import 'package:alertix_app/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../utils/navigation.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_header_widgte.dart';

class CreateAlarmsScreen extends StatelessWidget {
  const CreateAlarmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BackgroundWidget(
          child: Column(
            children: [
              CustomHeaderWidget(
                title: 'Crear alarmas',
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(AlertixSpaces.space24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: 'Crear alarma manual',
                      ),
                      const SizedBox(height: AlertixSpaces.space24),
                      CustomButton(
                        onPressed: () {
                          AlertixNavigation.navigateTo(
                            context,
                            AlertixNavigation.cameraScreen,
                          );
                        },
                        text: 'Crear alarmas con Cámara',
                        backgroundColor: AlertixColors.buttonColor2,
                        darkText: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
