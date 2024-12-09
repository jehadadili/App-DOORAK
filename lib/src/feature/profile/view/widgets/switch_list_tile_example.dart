import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchListTileExample extends StatefulWidget {
  const SwitchListTileExample({super.key});

  @override
  State<SwitchListTileExample> createState() => _SwitchListTileExampleState();
}

class _SwitchListTileExampleState extends State<SwitchListTileExample> {
  bool notification = false;
  bool account = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppText.notificationEN,
              style: Theme.of(context).primaryTextTheme.bodySmall),
          SwitchListTile(
            title: FittedBox(
              child: Text(
                AppText.appNotificationEN,
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
            value: notification,
            onChanged: (bool value) {
              setState(() {
                notification = value;
              });
            },
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
