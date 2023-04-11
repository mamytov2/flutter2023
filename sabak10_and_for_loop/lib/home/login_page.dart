import 'package:flutter/material.dart';
import 'package:sabak10_and_for_loop/home/user_page.dart';
import 'package:sabak10_and_for_loop/model.dart';

List studentter = <Student>[danyar, dinara, ayzat, jasmin];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

// Биринчи вариянт
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _Email;

  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final student in studentter) {
      index++;
      //index = 2;
      if (name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student.name,
            ),
          ),
        );
        break;
      } else {
        //index = 1 studentter = 5
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Сиздин атыныз же почтаныз туура эмес!!!'),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

// Экинчи вариянт
  /*
  void controlNameEmail(String name, String email) {
    for (int i = 0; i <= studentter.length; i++) {
      if (name == studentter[i] && email == studentter[i].email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (
              context,
            ) =>
                UserPage(),
          ),
        );
        break;
      } else {
        if (i == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Сиздин почтаныз же номериниз туура эмес!'),
            ),
          );
        }
      }
    }
  }

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/9b/14/30/9b1430a8b8d193f30d16e14522d50b55.jpg'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 35,
              right: 30,
              bottom: 40,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 216, 231, 231).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
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
                    'Welcome to site!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _name = value;
                        print('Value Иштеди $value');
                        print('Value Иштеди $_name');
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Name'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _Email = value;
                        print('Value Иштеди $value');
                        print('Value Иштеди $_Email');
                      },
                      decoration: const InputDecoration(
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
                    onPressed: () {
                      controlNameEmail(_name!, _Email!);
                    },
                    child: const Text('Sign in'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
