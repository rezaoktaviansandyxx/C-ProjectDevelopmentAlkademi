import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/model/api_intro.dart';

class TestMode extends StatefulWidget {
  const TestMode({super.key});

  @override
  State<TestMode> createState() => _TestModeState();
}

class _TestModeState extends State<TestMode> {
  Intro? result;
  Future _loadJson() async {
    String jsonString =
        await rootBundle.loadString('assets/jsonfile/intro.json');
    final jsonData = jsonDecode(jsonString);
    Intro intro = Intro.fromJson(jsonData);
    
    setState(() {
      result = intro;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fundamental Parsing Json'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                _loadJson();
              },
              child: const Text('Read Json Data'),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('$result'),
            ),
          ],
        ),
      ),
    );
  }
}
