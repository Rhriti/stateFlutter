import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var value = 0;

  void inc_coutner() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Widget Example'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Counter value'),
            Text('$value'),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: inc_coutner,
          child: Text('+'),
        ),
      ),
    );
  }
}
