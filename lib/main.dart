import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question_a.dart';
import 'package:quiz_app/class4/question_b.dart';
import 'package:quiz_app/class6/question_c.dart';
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
        '/mainscreen' :(context) => const MainScreen(),
        '/registration' :(context) => const Registration(),
        '/logoscreen' :(context) => const LogoScreen(),
        '/assesment' :(context) => const Assessment(),
        '/tutorial' :(context) => const Tutorial(),
        '/startscreen' :(context) => const StartScreen(),
        '/endscreen' :(context) => const EndScreen(),
        '/class2' :(context) => const QuestionA(),
        '/class4' :(context) => const QuestionB(),
        '/class6' :(context) => const QuestionC(),
      },
      home: const QuestionA(),
    );
  }
}