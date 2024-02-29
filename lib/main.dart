import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Neumorphism',
      home: Neumorphism(),
    );
  }
}

class Neumorphism extends StatelessWidget {
  const Neumorphism({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 79, 79, 79),
                offset: Offset(5.0, 5.0),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5.0, -5.0),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              )
            ],
          ),
          child: const Icon(
            Icons.android,
            size: 80,
          ),
        ),
      ),
    );
  }
}
