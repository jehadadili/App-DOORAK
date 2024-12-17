import 'dart:math';

class TimeSlotManager {
  // دالة إنشاء الفترات الزمنية بفواصل 15 دقيقة
  static List<String> generateTimeSlots() {
    List<String> slots = [];
    DateTime startTime = DateTime(2024, 1, 1, 8, 0);
    DateTime endTime = DateTime(2024, 1, 1, 16, 0);

    while (startTime.isBefore(endTime)) {
      final nextTime = startTime.add(const Duration(minutes: 15));
      String timeSlot = "${_formatTime(startTime)} - ${_formatTime(nextTime)}";
      slots.add(timeSlot);
      startTime = nextTime;
    }

    return slots;
  }

  // توليد أوقات محجوزة عشوائيًا
  static List<String> generateReservedSlots() {
    List<String> allSlots = generateTimeSlots();
    Random random = Random();
    List<String> reserved = [];

    for (var i = 0; i < allSlots.length / 4; i++) {
      reserved.add(allSlots[random.nextInt(allSlots.length)]);
    }
    return reserved.toSet().toList(); // إزالة التكرارات
  }

  static String _formatTime(DateTime time) {
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }
}
