import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({super.key});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  final _assetAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    openPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () async {
              await _assetAudioPlayer.stop();
              // ignore: use_build_context_synchronously
              Navigator.pushNamedAndRemoveUntil(
                  context, '/mainscreen', (route) => false);
            },
            icon: Image.asset('assets/images/close_cross.png'),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Terima Kasih!',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  openPlayer() async {
    await _assetAudioPlayer.open(
      Audio('assets/audios/misc_closing.mpeg'),
      autoStart: true,
    );
  }
}
