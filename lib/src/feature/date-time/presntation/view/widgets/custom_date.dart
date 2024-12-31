import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDate extends StatefulWidget {
  const CustomDate({super.key});

  @override
  State<CustomDate> createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  DateTime selectedDate = DateTime.now();

  // فتح نافذة اختيار التاريخ
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2999),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 16.0),
            ),
          ),
          child: child!,
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedDate = value; // تحديث الحالة
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.9, // تحديد عرض الحاوية
      ),
      height: 40, // ارتفاع مناسب
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).inputDecorationTheme.fillColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: _showDatePicker,
            icon: Icon(
              Icons.calendar_today,
              color: Theme.of(context).inputDecorationTheme.suffixIconColor,
            ),
          ),
          Expanded(
            // استخدام Expanded لضمان عدم تجاوز النص المساحة المتاحة
            child: Text(
              DateFormat('yyyy-MM-dd').format(selectedDate),
              style: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
          ),
        ],
      ),
    );
  }
}
