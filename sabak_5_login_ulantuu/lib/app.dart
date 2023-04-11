import 'package:flutter/material.dart'
    show BuildContext, Colors, MaterialApp, StatelessWidget, ThemeData, Widget;
import 'package:sabak_5_login_ulantuu/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
