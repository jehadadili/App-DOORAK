import 'package:doorak/src/feature/date-time/presntation/view/widgets/time_selection_sheet.dart';
import 'package:doorak/src/feature/date-time/presntation/view/widgets/time_slot_manager.dart';
import 'package:flutter/material.dart';

class CustomTime extends StatefulWidget {
  const CustomTime({super.key});

  @override
  State<CustomTime> createState() => _CustomTimeState();
}

class _CustomTimeState extends State<CustomTime> {
  String selectedTime = 'Select Time';
  final List<String> reservedSlots = TimeSlotManager.generateReservedSlots();

  void _showTimeSelectionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return TimeSelectionSheet(
          timeSlots: TimeSlotManager.generateTimeSlots(),
          reservedSlots: reservedSlots,
          onTimeSelected: (time) {
            setState(() {
              selectedTime = time;
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.9,
      ),
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).inputDecorationTheme.fillColor ??
            Colors.grey.shade200,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: _showTimeSelectionSheet,
            icon: Icon(Icons.access_time,
                color: Theme.of(context).inputDecorationTheme.suffixIconColor),
          ),
          Expanded(
            child: Text(selectedTime,
                style: Theme.of(context).inputDecorationTheme.hintStyle),
          ),
        ],
      ),
    );
  }
}