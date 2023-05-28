import 'package:flutter/material.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        onPressed: () {},
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
