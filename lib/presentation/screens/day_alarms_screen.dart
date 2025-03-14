import 'package:flutter/material.dart';

import '../../data/alarm.dart';
import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../design_system/styles.dart';
import '../widgets/custom_divider.dart';

class DayAlarmsScreen extends StatefulWidget {
  const DayAlarmsScreen({super.key});

  @override
  State<DayAlarmsScreen> createState() => _DayAlarmsScreenState();
}

class _DayAlarmsScreenState extends State<DayAlarmsScreen> {
  final List<Alarm> alarms = [
    Alarm(time: '06:00 am', frequency: AlarmFrequency.daily, isActive: true),
    Alarm(time: '08:00 am', frequency: AlarmFrequency.daily, isActive: false),
    Alarm(time: '10:30 am', frequency: AlarmFrequency.weekly, isActive: true),
    Alarm(time: '12:00 pm', frequency: AlarmFrequency.monthly, isActive: true),
    Alarm(time: '15:00 pm', frequency: AlarmFrequency.weekly, isActive: false),
    Alarm(time: '17:30 pm', frequency: AlarmFrequency.daily, isActive: true),
    Alarm(time: '19:00 pm', frequency: AlarmFrequency.weekly, isActive: true),
    Alarm(time: '20:00 pm', frequency: AlarmFrequency.monthly, isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AlertixSpaces.space16,
              vertical: AlertixSpaces.space24,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AlertixSpaces.space16,
                vertical: AlertixSpaces.space8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AlertixSpaces.space16),
                border: Border.all(
                  color: AlertixColors.mainColor1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Hora',
                    style: AlertixTextStyles.subtitleM.copyWith(
                      color: AlertixColors.textColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Frecuencia',
                    style: AlertixTextStyles.subtitleM.copyWith(
                      color: AlertixColors.textColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Estado',
                    style: AlertixTextStyles.subtitleM.copyWith(
                      color: AlertixColors.textColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              removeBottom: true,
              child: ListView.builder(
                itemCount: alarms.length,
                itemBuilder: (context, index) =>
                    AlarmItem(alarm: alarms[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlarmItem extends StatelessWidget {
  final Alarm alarm;

  const AlarmItem({super.key, required this.alarm});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AlertixColors.mainColor6,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  alarm.time,
                  style: AlertixTextStyles.subtitleL.copyWith(
                    color: AlertixColors.textColor1,
                  ),
                ),
                Text(
                  alarm.frequency.name,
                  style: AlertixTextStyles.subtitleL.copyWith(
                    color: AlertixColors.textColor1,
                  ),
                ),
                Text(
                  alarm.isActive ? 'Activo' : 'Inactivo',
                  style: AlertixTextStyles.subtitleL.copyWith(
                    color: AlertixColors.textColor3,
                  ),
                ),
              ],
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
  }
}
