import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/home_page.dart';

import 'components/exisenple_weight_age.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}
