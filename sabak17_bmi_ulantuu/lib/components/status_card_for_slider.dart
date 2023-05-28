import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_colors.dart';

class StatusCardSlider extends StatelessWidget {
  const StatusCardSlider(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2});

  final String text, text1, text2;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                text1,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
              Text(
                text2,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            child: CupertinoSlider(
              value: 140,
              onChanged: (value) {},
              min: 0,
              max: 240,
              activeColor: AppColors.whiteColor,
              // inactiveColor: Color(0xff888888),
              thumbColor: AppColors.pinkColor,
              onChangeEnd: (value) {},
            ),
          )
        ],
      ),
    ));
  }
}
