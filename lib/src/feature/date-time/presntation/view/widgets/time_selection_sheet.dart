import 'package:flutter/material.dart';

class TimeSelectionSheet extends StatelessWidget {
  final List<String> timeSlots;
  final List<String> reservedSlots;
  final Function(String) onTimeSelected;

  const TimeSelectionSheet({
    super.key,
    required this.timeSlots,
    required this.reservedSlots,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Choose Time',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: timeSlots.length,
              itemBuilder: (context, index) {
                final time = timeSlots[index];
                final isReserved = reservedSlots.contains(time);

                return ListTile(
                  title: Text(
                    time,
                    style: TextStyle(
                      color: isReserved ? Colors.grey : Colors.black,
                    ),
                  ),
                  enabled: !isReserved, // تعطيل الحجز للأوقات المحجوزة
                  onTap: isReserved ? null : () => onTimeSelected(time),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
