import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/components/calculate_button.dart';
import 'package:sabak19_bmi_ulantuu3/components/height.dart';
import 'package:sabak19_bmi_ulantuu3/components/male_female.dart';
import 'package:sabak19_bmi_ulantuu3/components/status_card.dart';
import 'package:sabak19_bmi_ulantuu3/components/weight_age.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_colors.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 0;
  int age = 0;
  double heigeht = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgrColor,
        title: const Center(child: Text(AppTexts.bmi)),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                          print('object');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                          print('object');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppTexts.female,
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            StatusCard(
              child: Height(
                text: AppTexts.height,
                text1: '${heigeht.toInt()}',
                text2: 'cm',
                onChangeEnd: (value) {
                  setState(() {
                    heigeht = value;
                  });
                },
                height: heigeht,
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: '$weight',
                      removedBasuu: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '$age',
                      removedBasuu: () {
                        setState(() {
                          age--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
