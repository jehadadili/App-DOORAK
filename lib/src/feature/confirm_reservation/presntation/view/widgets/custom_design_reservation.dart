import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';

class CustomDesignReservation extends StatelessWidget {
  const CustomDesignReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppText.serviceEN,
            style: Theme.of(context).primaryTextTheme.titleMedium),
      ],
    );
  }
}
