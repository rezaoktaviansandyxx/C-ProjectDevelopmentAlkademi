import 'package:flutter/material.dart';
import 'package:quiz_app/mainscreen.dart';
import 'package:quiz_app/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const MainScreen(),
        '/registration' :(context) => const Registration(),
      },
      home: const MainScreen(),
    );
  }
}