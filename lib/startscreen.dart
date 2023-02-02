import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                  getIntSF();
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

  void getIntSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final getInt = prefs.getInt('Classes');
    if (getInt == 1) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(context, '/class2', (route) => false);
    } else if (getInt == 2) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(context, '/class4', (route) => false);
    } else if (getInt == 3) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(context, '/class6', (route) => false);
    } else {
      const Text('Route tidak ditemukan');
    }
  }
}
