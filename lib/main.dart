import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question1.dart';
import 'package:quiz_app/class4/question1.dart';
import 'package:quiz_app/endscreen.dart';
import 'package:quiz_app/logoscreen.dart';
import 'package:quiz_app/mainscreen.dart';
import 'package:quiz_app/registration.dart';
import 'package:quiz_app/assessment.dart';
import 'package:quiz_app/startscreen.dart';
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
        '/assesment' :(context) => const Assessment(),
        '/tutorial' :(context) => const Tutorial(),
        '/startscreen' :(context) => const StartScreen(),
        '/endscreen' :(context) => const EndScreen(),
        '/class2' :(context) => const Question1Class2(),
        '/class4' :(context) => const Question1Class4(),
      },
      home: const MainScreen(),
    );
  }
}