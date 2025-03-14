import 'package:alertix_app/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../design_system/spaces.dart';
import '../design_system/styles.dart';
import '../utils/navigation.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_text_input.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BackgroundWidget(
          child: Padding(
            padding: const EdgeInsets.all(AlertixSpaces.space24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ingresa tu número de teléfono:',
                  style: AlertixTextStyles.titleL,
                ),
                const SizedBox(height: AlertixSpaces.space16),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: CustomDropdown<String>(
                          value: '+57',
                          items: ['+57', '+58', '+54'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {},
                        ),
                      ),
                      const SizedBox(width: AlertixSpaces.space16),
                      Expanded(
                        child: CustomTextInput(
                          hintText: 'Ingresa tu número de teléfono',
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AlertixSpaces.space16),
                CustomButton(
                  onPressed: () {
                    AlertixNavigation.navigateTo(
                      context,
                      AlertixNavigation.validateCode,
                    );
                  },
                  text: 'Crear cuenta',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
