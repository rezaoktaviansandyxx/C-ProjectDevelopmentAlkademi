import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
            child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('data:image/png;base64,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'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://statistics.uii.ac.id/wp-content/uploads/2020/01/logo-ristekdikti-png.png'),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
