import 'package:alertix_app/presentation/design_system/colors.dart';
import 'package:alertix_app/presentation/design_system/styles.dart';
import 'package:alertix_app/presentation/widgets/background_widget.dart';
import 'package:flutter/material.dart';

import '../utils/navigation.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_header_widgte.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<String> _items = [
    'Ajustes de sonido',
    'Alarmas por ubicación',
    'Tracking de tiempo en Apps',
    'Modo no molestar',
    'Asistentes de voz',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BackgroundWidget(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHeaderWidget(
                title: 'Configuraciones',
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
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Material(
                        color: AlertixColors.mainColor6,
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {},
                              title: Text(
                                _items[index],
                                style: AlertixTextStyles.subtitleL.copyWith(
                                  color: AlertixColors.textColor1,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward,
                                color: AlertixColors.mainColor1,
                              ),
                            ),
                            CustomDivider(),
                          ],
                        ),
                      );
                    },
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
