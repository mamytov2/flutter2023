import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app_colors.dart';
import 'package:sabak14_quize_app/constants/app_text_styles.dart';
import 'package:sabak14_quize_app/constants/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: AppTextStyles.appBarTextStyles,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Кыргызыстанда 7 область барбы?',
                style: AppTextStyles.appTextStyles,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 102,
              ),
              SizedBox(
                height: 70,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.trueBgrColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    AppTexts.tuura,
                    style: AppTextStyles.trueStyles,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 70,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.falsBgrColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    AppTexts.tuuraEmes,
                    style: AppTextStyles.trueStyles,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 40,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 40,
                  ),
                ],
              )
              // SizedBox(
              //   height: 50,
              //   child: ListView.builder(
              //       itemCount: 10,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return a ? Icon(Icons.check_circle) : Icon(Icons.close);
              //       }),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
