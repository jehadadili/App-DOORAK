import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppDoorak());
}

class AppDoorak extends StatelessWidget {
  const AppDoorak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CustomDate(),
        );
      },
    );
  }
}

class CustomDate extends StatefulWidget {
  const CustomDate({super.key});

  @override
  State<CustomDate> createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  DateTime selectedDate = DateTime.now();

  void _showDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(2999),
      locale: const Locale('en'), // تأكد من استخدام Locale مناسب
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate; // تحديث التاريخ المختار
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
            ),
            height: ScreenUtil().setHeight(50),
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green, // استخدم اللون الأخضر مباشرة
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: _showDatePicker,
                  icon: const Icon(
                    Icons.calendar_today,
                    color: Colors.black, // استخدم اللون الأسود مباشرة
                  ),
                ),
                Expanded(
                  child: Text(
                    DateFormat.yMd()
                        .format(selectedDate), // عرض التاريخ باستخدام التنسيق
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
