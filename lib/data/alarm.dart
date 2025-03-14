enum AlarmFrequency { daily, weekly, monthly }

extension AlarmFrequencyExtension on AlarmFrequency {
  String get name {
    return switch (this) {
      AlarmFrequency.daily => 'Diario',
      AlarmFrequency.weekly => 'Semanal',
      AlarmFrequency.monthly => 'Mensual',
    };
  }
}

class Alarm {
  final String time;
  final AlarmFrequency frequency;
  final bool isActive;

  const Alarm({
    required this.time,
    required this.frequency,
    this.isActive = true,
  });

  Alarm copyWith({
    String? time,
    AlarmFrequency? frequency,
    bool? isActive,
  }) {
    return Alarm(
      time: time ?? this.time,
      frequency: frequency ?? this.frequency,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  String toString() {
    return 'Alarm(time: $time, frequency: $frequency, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Alarm &&
        other.time == time &&
        other.frequency == frequency &&
        other.isActive == isActive;
  }

  @override
  int get hashCode => time.hashCode ^ frequency.hashCode ^ isActive.hashCode;
}
