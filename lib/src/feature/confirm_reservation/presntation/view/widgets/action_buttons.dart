import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:confetti/confetti.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({super.key});

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            const Expanded(
              child: ButtonWidget(
                text: AppText.cancelEN,
                color: ColorApp.greydark,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: InkWell(
                onTap: () {
                  _confettiController.play(); 
                },
                child: const ButtonWidget(
                  text: "Confirm",
                  color: ColorApp.primarycolor,
                ),
              ),
            ),
          ],
        ),
        ConfettiWidget(
          confettiController: _confettiController,
          blastDirectionality: BlastDirectionality.explosive,
          shouldLoop: false,
          colors: const [
            Colors.green,
            Colors.blue,
            Colors.pink,
            Colors.orange,
            Colors.purple
          ],
        ),
      ],
    );
  }
}
