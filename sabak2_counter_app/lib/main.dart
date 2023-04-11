// ignore_for_file: prefer_const_constructors, sort_child_properties_last
//импорт бул бардык флаттерге тиешелуу нерселерди озуно камтыйт
import 'package:flutter/material.dart';
import 'package:sabak2_counter_app/secondPage.dart';

//void: эч нерсе кайтарбайт
//main:негизги функция
// (): функциянын функция экекнин билдирет
// {}: функциянын денеси
void main() {
  //runApp: Сиздин тиркемениздин баштоо функциясы ал ичине вижет алат
  //  MyApp() : класс же вижеттин аталышы
  runApp(const MyApp());
}

// class MyApp: класс
// extends: Мурас алуу => StatelessWidget
class MyApp extends StatelessWidget {
// кластын констуруктору
  const MyApp({super.key});
// @override
  @override
  // build Куруу ал озуно вижет алат
  // BuildContext бул адрес вижеттерди козомолдоочу вектор
  Widget build(BuildContext context) {
    // return: кайтарат эмнени кайтарат? MfterialAppты кайтарат
    //MfterialApp материалдык дизайны бар жаны флаттер колдонмоосун тузот
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //theme: бул тема MfterialAppка тиешелуу свойство
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: уй. MfterialAppтын свойствосу
      // MyHomePage() бул бир вижет же класс
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "тапшырма 1",
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                child: Center(
                    child: Text(
                  "Cан: $index",
                  style: TextStyle(fontSize: 20),
                )),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index--;
                        });
                      },
                      child: Icon(Icons.remove)),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index++;
                        });
                      },
                      child: Icon(Icons.add)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EkinchiBet(
                                  count: index,
                                )));
                  },
                  icon: Icon(
                    Icons.next_plan,
                    size: 50,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
