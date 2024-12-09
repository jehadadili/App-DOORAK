import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart'; // استيراد مكتبة intl

class CustomDate extends StatefulWidget {
  const CustomDate({super.key});

  @override
  State<CustomDate> createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: ColorApp.darkpurplegray.withOpacity(0.15),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => _showDatePicker(context),
            child: Icon(Icons.calendar_today, size: 20.sp),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            // تنسيق التاريخ باستخدام intl
            DateFormat('yyyy-MM-dd').format(selectedDate),
            style: TextStyle(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  // دالة لعرض DatePicker لاختيار التاريخ
  void _showDatePicker(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "تم اختيار التاريخ: ${DateFormat('yyyy-MM-dd').format(date)}")),
      );
    }
  }
}
