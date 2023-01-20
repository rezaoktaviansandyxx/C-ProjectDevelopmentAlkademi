import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question1.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final _assetsAudioPlayer = AssetsAudioPlayer();
  bool isEnableButton = false;
  @override
  void initState() {
    openPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: isEnableButton
              ? () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Question1Class2()),
                      (route) => false);
                }
              : null,
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

  openPlayer() async {
    await _assetsAudioPlayer.open(
      Audio('assets/audios/startscreen.m4a'),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isEnableButton = true;
      });
    });
  }
}
