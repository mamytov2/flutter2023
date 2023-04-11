import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(
                  size: 80,
                ),
                Text('Flutter'),
              ],
            ),
            const Text(
              'Welcome to site',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              onPressed: () {},
              child: const Text('Sign in'),
            )
          ],
        ),
      ),
    );
  }
}
