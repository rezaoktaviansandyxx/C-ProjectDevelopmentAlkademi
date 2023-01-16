import 'package:flutter/material.dart';

class Assesment extends StatelessWidget {
  const Assesment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
