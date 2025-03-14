import 'package:alertix_app/presentation/utils/navigation.dart';
import 'package:alertix_app/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../design_system/styles.dart';
import '../widgets/background_widget.dart';
import '../widgets/code_input_widget.dart';

class ValidateCodeScreen extends StatelessWidget {
  const ValidateCodeScreen({super.key});

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
                Center(
                  child: CodeInputWidget(
                    onCompleted: (value) {
                      AlertixNavigation.navigateTo(
                        context,
                        AlertixNavigation.home,
                      );
                    },
                    onEditing: (value) {},
                  ),
                ),
                const SizedBox(height: AlertixSpaces.space16),
                Center(
                  child: Text(
                    'Ingresa el código que te enviamos a tu número de teléfono',
                    textAlign: TextAlign.center,
                    style: AlertixTextStyles.titleL,
                  ),
                ),
                const SizedBox(height: AlertixSpaces.space40),
                Center(
                  child: Text(
                    '¿No llego ningún código?',
                    textAlign: TextAlign.center,
                    style: AlertixTextStyles.titleL.copyWith(
                      color: AlertixColors.textColor3,
                    ),
                  ),
                ),
                const SizedBox(height: AlertixSpaces.space16),
                Center(
                  child: CustomTextButton(
                    text: 'Reenviar código',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
