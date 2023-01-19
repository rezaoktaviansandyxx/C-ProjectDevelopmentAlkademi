import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question1.dart';
import 'package:quiz_app/class2/question2.dart';
import 'package:quiz_app/class2/question3.dart';
import 'package:quiz_app/class2/question4.dart';
import 'package:quiz_app/class2/question5.dart';
import 'package:quiz_app/logoscreen.dart';
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
        '/kelas2/question1' :(context) => const Question1Class2(),
        '/kelas2/question2' :(context) => const Question2Class2(),
        '/kelas2/question3' :(context) => const Question3Class2(),
        '/kelas2/question4' :(context) => const Question4Class2(),
        '/kelas2/question5' :(context) => const Question5Class2(),
      },
      home: const Question3Class2(),
    );
  }
}