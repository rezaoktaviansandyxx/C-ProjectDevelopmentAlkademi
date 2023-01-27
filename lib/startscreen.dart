import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var passData = 0;
  final _assetsAudioPlayer = AssetsAudioPlayer();
  bool isEnableButton = false;
  @override
  void initState() {
    openPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    passData = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: isEnableButton
              ? () {
                  if (passData == 1) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/class2', (route) => false);
                  } else if (passData == 2) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/class4', (route) => false);
                  } else if (passData == 3) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/class6', (route) => false);
                  }
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
      Audio('assets/audios/misc_start.mpeg'),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isEnableButton = true;
      });
    });
  }
}
