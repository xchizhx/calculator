import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Widget getButton(String text) {
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
            child: Text(text)),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2", style: TextStyle(fontSize: 50)),
                      Text("+", style: TextStyle(fontSize: 50)),
                      Text("2", style: TextStyle(fontSize: 50),)],
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getButton("del"),
                      getButton("0"),
                      getButton("%"),
                      getButton("/")
                    ],
                  )),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getButton("7"),
                          getButton("8"),
                          getButton("9"),
                          getButton("*")
                        ],
                      )),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getButton("4"),
                          getButton("5"),
                          getButton("6"),
                          getButton("-")
                        ],
                      )),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getButton("1"),
                          getButton("2"),
                          getButton("3"),
                          getButton("+")
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
