import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff006699),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width / 25,
            ),
            child: const Text(
              'START',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
