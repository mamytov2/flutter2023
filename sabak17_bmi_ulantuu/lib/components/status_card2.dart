import 'package:flutter/material.dart';
import 'package:sabak17_bmi_ulantuu/components/circular_button.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_colors.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({super.key, required this.text, required this.san});

  final String text;
  final String san;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            san,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularButton(
                icon: Icons.remove,
              ),
              SizedBox(width: 10),
              CircularButton(
                icon: Icons.add,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
