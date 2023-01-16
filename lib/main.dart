import 'package:flutter/material.dart';
import 'package:quiz_app/logoscreen.dart';
import 'package:quiz_app/mainscreen.dart';
import 'package:quiz_app/registration.dart';
import 'package:quiz_app/tutorial.dart';

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
        '/registration' :(context) => const Registration(),
        '/logoscreen' :(context) => const LogoScreen(),
        '/tutorial' :(context) => const Tutorial(),
      },
      home: const MainScreen(),
    );
  }
}